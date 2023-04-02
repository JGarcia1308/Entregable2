/**
 * The preload script runs before. It has access to web APIs
 * as well as Electron's renderer process modules and some
 * polyfilled Node.js functions.
 * 
 * https://www.electronjs.org/docs/latest/tutorial/sandbox
 */

const { ipcRenderer, contextBridge } = require('electron')

contextBridge.exposeInMainWorld(
  'communication',
  {
    usuarioValido: (datos) => ipcRenderer.send('usuarioValido', datos),
    inicioCorrecto: (callback) => ipcRenderer.on('inicioCorrecto', callback),
    nuevoUsuario: (user) => ipcRenderer.send('nuevoUsuario', user),
    listadoProductos: (callback) => ipcRenderer.on('listadoProductos', callback),
    listado: () => ipcRenderer.send('listado'),
    solicitarProducto: (datos) => ipcRenderer.send('solicitarProducto', datos),
    devolverProducto: (callback) => ipcRenderer.on('devolverProducto', callback),
    pedidoCantidad: (data) => ipcRenderer.send('pedidoCantidad', data),
    pedidoGuardado:(callback) => ipcRenderer.on('pedidoGuardado', callback),
    listaPedido: () => ipcRenderer.send('listaPedido'),
    devuelveLista: (callback) => ipcRenderer.on('devuelveLista', callback)
  }
)
