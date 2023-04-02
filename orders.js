//Ventana debe cargar en modo Modal
    const id = document.getElementById('productId');
    const prod = document.getElementById('productName');
    const prov = document.getElementById('provider');
    const cant = document.getElementById('quantity')

window.communication.devolverProducto(function (event, args){
    
    let producto = JSON.parse(args);    
    id.value = producto['Cod_Prod'];
    prod.value = producto['Producto'];
    prov.value = producto['nombre'];
})

function Confirmar() {
    //envia la cantidad a comprar y cierra la ventana
    window.communication.pedidoCantidad(cant.value)
}