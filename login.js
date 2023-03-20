let nombre = document.getElementById('user');
let btnsubmit = document.getElementById('login-button');

btnsubmit.addEventListener('click', function (event) {
    event.preventDefault();    
    window.communication.usuarioValido(nombre.value);
})

window.communication.inicioCorrecto(function(event,args){
    alert(args);
})