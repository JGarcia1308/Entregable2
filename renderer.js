const links = document.querySelectorAll(".sidebar a");
const user = document.getElementById('user');


links.forEach((link) => {
  link.addEventListener("click", (event) => {
    event.preventDefault();
    const pageId = link.getAttribute("href").substring(1);
    const pageUrl = `./${pageId}.html`;
    const contentDiv = document.querySelector(".main-content");
    contentDiv.innerHTML = "";
    fetch(pageUrl)
      .then((response) => response.text())
      .then((html) => {
        const parser = new DOMParser();
        const page = parser.parseFromString(html, "text/html");
        console.log(page.querySelector("body").firstChild);
        contentDiv.appendChild(page.querySelector("body"));
      });
  });
});

window.communication.inicioCorrecto(function (event, args) {
 user.innerHTML = args;
});

function listado(){
  window.communication.listado(() =>{
    console.log('Cargando Productos ....')
  });
}

window.communication.listadoProductos(function(event, args){
  const container = document.querySelector(".row");
  let lproductos = JSON.parse(args); 
  
  for (let i = 0; i < lproductos.length; i++) {
    let prod = lproductos[i]['Cod_Prod'];
    let descrip = lproductos[i]['Descripcion'];
    let precio = lproductos[i]['Precio'];

    let html = `<div class="col-md-4">
      <div class="card mb-4 box-shadow">
        <img class="card-img-top" src="350x200.png" alt="Product Image">
        <div class="card-body">
          <h4 class="card-title">${prod}</h4>
          <p class="card-text">${descrip}.</p>
          <div class="d-flex justify-content-between align-items-center">
            <span class="text-muted">${precio}</span>
            <button type="button" class="btn btn-sm btn-outline-primary" data-bs-toggle="modal" 
            data-bs-target="#myModal1" onclick="Comprar(this)">Comprar</button>
            <button type="button" class="btn btn-sm btn-outline-primary" data-bs-toggle="modal" data-bs-target="#myModal2">Actualizar</button>
          </div>
        </div>
      </div>`;        
    container.innerHTML += html;
  }
})

function Comprar(btn) {
  const cardMid = btn.parentNode;
  const cardBody = cardMid.parentNode;
  // Obtener el elemento con la clase card-title
  const cardTitle = cardBody.querySelector(".card-title");

  // Obtener el valor del texto dentro del elemento card-title
  const producto = cardTitle.textContent;

  // Hacer algo con el valor del producto
  window.communication.solicitarProducto(producto);
  console.log("Comprando", producto);
}

function Listar() {
  window.communication.listaPedido(()=>{
    console.log('Cargando Pedidos ......')
  });
}

window.communication.devuelveLista(function(event, args){
  const tbody = document.querySelector('tbody');
  let lista = JSON.parse(args);
  let span;

  for (let i = 0; i < lista.length; i++) {
    if (i % 2 ==0) {
      span = '<span href="#detalle" class="badge bg-success">Entregado</span>'
    } else if(i % 3 == 0){
      span = '<span class="badge bg-warning text-dark">En proceso</span>'
    } else {
      span = '<span class="badge bg-danger">Cancelado</span>'
    }

    let html = `<tr href="#detalle">
          <td>${i+1}</td>
          <td>${lista[i]['Cod_Prod']}</td>
          <td>${lista[i]['cantidad']}</td>
          <td>${lista[i]['total_linea']}</td>
          <td>${span}</td>
        </tr>`   

      tbody.innerHTML += html;
  } 
  
})