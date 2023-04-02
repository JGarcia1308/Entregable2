let nombre = document.getElementById('user');
let psw = document.getElementById('password');
let btnsubmit = document.getElementById('login-button');
let btnReg = document.getElementById('reg-button');

btnsubmit.addEventListener('click', function (event) {
    let data = {
        nombre: nombre.value,
        pass: psw.value
    };  
    event.preventDefault();    
    window.communication.usuarioValido(JSON.stringify(data));
})

btnReg.addEventListener('click', function(event){
    let data = {
        nombre: nombre.value,
        pass: psw.value
    };   

    window.communication.nuevoUsuario(JSON.stringify(data));
})