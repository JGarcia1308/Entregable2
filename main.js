// Modules to control application life and create native browser window
const { app, BrowserWindow, ipcMain, dialog } = require("electron");
const path = require("path");
const { Sequelize, DataTypes } = require('sequelize');
const  bcrypt = require ("bcrypt");
const  saltRounds = 10;

let usuario;
let mainWindow;
let producto;
let linea;

function createWindow() {
  // Create the browser window.
  mainWindow = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      preload: path.join(__dirname, "preload.js"),
    },
  });

  // and load the index.html of the app.
  mainWindow.loadFile("login.html");

  // Open the DevTools.
  // mainWindow.webContents.openDevTools()
}

//#region Base de Datos
let credencial = {
  db: "supermercado",
  user: "galileo",
  pass: "ivn2023.",
};

const sequelize = new Sequelize(
  credencial.db,
  credencial.user,
  credencial.pass,
  {
    host: "localhost",
    dialect: "mysql",
  }
);

sequelize
  .authenticate()
  .then(() => {
    console.log("Connection has been established successfully.");
  })
  .catch((err) => {
    console.log(err);
  });

  const Usuario = sequelize.define(
    "Usuarios",
    {
      // Model attributes are defined here
      idUsuario: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoincrement: true
      },          
      nombre: {
        type: DataTypes.STRING,
        allowNull: false
      },
      pass: {
        type: DataTypes.CHAR,
        allowNull: false
      }      
    },
    {
      // Other model options go here
      sequelize, // We need to pass the connection instance
      modelName: "Usuario", // We need to choose the model name
      timestamps: false,
    }
  );  

  const Producto = sequelize.define(
    "Productos",
    {
      Cod_Prod: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false
      },
      Cod_Marca:{
        type: DataTypes.INTEGER,        
        allowNull: false
      },
      Cod_Prov:{
        type: DataTypes.INTEGER,        
        allowNull: false
      },
      Descripcion:{
        type: DataTypes.STRING,        
        allowNull: false
      },
      Precio:{
        type: DataTypes.DECIMAL,        
        allowNull: false
      }
    },
    {
      // Other model options go here
      sequelize, // We need to pass the connection instance
      modelName: "Producto", // We need to choose the model name
      timestamps: false,
    }
  ) 

  const ver_Producto = sequelize.define(
    "ver_Productos",
    {
      Cod_Prod:{
        type: DataTypes.INTEGER,
        primaryKey: true
      },
      nombre:{
        type: DataTypes.STRING
      },
      Producto: {
        type: DataTypes.STRING
      },
      precio:{
        type: DataTypes.DECIMAL
      }
    },
    {
      // Other model options go here
      sequelize, // We need to pass the connection instance
      modelName: "ver_Productos", // We need to choose the model name
      timestamps: false,
    }
  )

  const Clientes = sequelize.define(
  "clientes",
  {
    Cod_Cliente:{
      type: DataTypes.INTEGER,
      primaryKey: true      
    },
    nombre:{
      type: DataTypes.TEXT
    },
    idUsuario:{
      type: DataTypes.INTEGER
    }
  },
  {
    // Other model options go here
    sequelize, // We need to pass the connection instance
    modelName: "clientes", // We need to choose the model name
    timestamps: false,
  }
)

const Pedidos = sequelize.define(
  "detalle_fac",{
    idFacturas:{
      type:DataTypes.INTEGER,
      primaryKey: true
    },
    Cod_Prod:{
      type: DataTypes.INTEGER
    },
    cantidad:{
      type: DataTypes.INTEGER
    },
    total_linea:{
      type: DataTypes.DECIMAL
    },
    precio:{
      type: DataTypes.DECIMAL
    }
  },
  {
    // Other model options go here
    sequelize, // We need to pass the connection instance
    modelName: "NuevaFactura", // We need to choose the model name
    timestamps: false,
    freezeTableName: true,
  }
)

const Facturas = sequelize.define(
  "facturas",{
    idFacturas:{
      type:DataTypes.INTEGER,
      primaryKey: true
    }
  },
  {
    // Other model options go here
    sequelize, // We need to pass the connection instance
    modelName: "facturas", // We need to choose the model name
    timestamps: false,
  }
)

ipcMain.on('listaPedido', ()=>{
  Pedidos.findAll({
    attributes:['idFacturas','Cod_Prod','cantidad','total_linea','precio']
  })
  .then(res =>{
    mainWindow2.webContents.send('devuelveLista', JSON.stringify(res));
  })
  .catch(err =>{
    console.log('Error al Ver Pedidos' , err)
  })
})

  ipcMain.on('pedidoCantidad', (event, args)=>{
    let fact;    
    Facturas.max('idFacturas')
    .then(res =>{
      fact = res + 1      
    })
    .catch(err =>{
      console.log('Error al crear pedido', err)
    })    
    Clientes.findOne({
      where:{
        idUsuario: usuario
      }
    })
    .then(res =>{
      let clt = res['Cod_Cliente'];    

      sequelize
        .query('CALL NuevaFactura (:id, :cliente)', 
        {replacements: { id: fact, cliente: clt, }})
        .then(res => {
          Pedidos.create({
            idFacturas: fact,
            Cod_Prod: producto,
            cantidad: parseInt(args),
            total_linea: parseInt(args) * linea,
            precio: linea
          })
          .then(res =>{
            console.log('Detalle Pedido', res)
          })
          .catch(err =>{
            console.log('Error Detalle Pedido', err)
          })  
        })
        .catch(err =>{
          console.log('Error Pedido',err)
        })
        let window = BrowserWindow.fromId(3);
        window.close();        
    })
    .catch(err =>{
      console.log('Error al crear pedido', err)
    })
  })

  ipcMain.on('solicitarProducto', (event, args)=>{
    console.log('Buscar: '+ args)
    ver_Producto.findOne({
      where:{
        Cod_Prod: args
      } 
    })
    .then(res =>{
      producto = res['Cod_Prod'];
      linea = res['precio'];   
      createWindow3('orders.html')
      mainWindow3.webContents.on('did-finish-load', function(event, args){
        mainWindow3.webContents.send('devolverProducto', JSON.stringify(res))
      })
    })
    .catch(err =>{
      console.log(err);
    })
  })

  ipcMain.on("usuarioValido", function (event, args) {
    let user = JSON.parse(args);    
    Usuario.findOne({   
      where:{
        nombre: user['nombre']  
      }    
    })
    .then(res =>{          
      psw = JSON.stringify(res)          
      usuario = res['idUsuario'];
      bcrypt.compare(user['pass'],psw)
      .then(res =>{          
          createWindow2('index.html')  
          CloseWindow();                    
          mainWindow2.webContents.on('did-finish-load', function(event, args){
          mainWindow2.webContents.send('inicioCorrecto', user['nombre'])          
        })
      })
      .catch(err => {
        console.log('Contraseña no Coincide', err);  
      })
    })
    .catch(err =>{
      console.log('Usuario no Existe');
    })
  })

  ipcMain.on('nuevoUsuario', function(event, args){
    let data = JSON.parse(args);  
    console.log(data['pass'])
    bcrypt.hash(data['pass'], saltRounds) 
    .then((hash) => {    
      console.log("Encryptando Contraseña ....")
      Usuario.create({
        nombre: data['nombre'],
        pass: hash})
      })
      .then(res =>{
        console.log('Usuario Creado Exitosamente: '+ data['nombre']);    
      })
      .catch(err =>{
        console.log('Error Durante el Proceso', err);
      })
    })  
    

  ipcMain.on('listado', () =>{
    {
      console.log("Cargando Listado ....")
      Producto.findAll({      
        attributes:['Cod_Prod','Descripcion','Precio']
      })
      .then(res =>{        
        mainWindow2.webContents.send('listadoProductos', JSON.stringify(res));
      })
      .catch(err =>{
        console.log('Error en la consulta', err)
      })
    }
  }) 
//#endregion

let mainWindow2;
let mainWindow3;

function createWindow2(page) {
  // Create the browser window.
  mainWindow2 = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      preload: path.join(__dirname, "preload.js"),
    },
  });

  // and load the index.html of the app.
  mainWindow2.loadFile(page);

  // Open the DevTools.
  // mainWindow.webContents.openDevTools()
}

function createWindow3(page) {
  // Create the browser window.
  mainWindow3 = new BrowserWindow({
    parent: mainWindow2,
    width: 800,
    height: 600,
    modal:true,
    webPreferences: {
      preload: path.join(__dirname, "preload.js"),
    },
  });

  // and load the index.html of the app.
  mainWindow3.loadFile(page);
  mainWindow3.showModal();
  // Open the DevTools.
  // mainWindow.webContents.openDevTools()
}


// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
// Some APIs can only be used after this event occurs.
app.whenReady().then(() => {
  createWindow();
});


function CloseWindow() {
  const window = BrowserWindow.fromId(1);
  window.close();
}
  