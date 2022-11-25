function validar(){
    var usuario= document.getElementById("usuario");
    var clave= document.getElementById("clave");

    if (usuario.value== "123@456" && clave.value== "123456"){
        window.location.href="./index.html";
    }
    else {
        alert("Introduzca un usuario y contraseña correctos");
    }
}

let submit= document.getElementById("#submit");

this.submit.addEventListener("click", (e)=> {
    e.preventDefault();
    validar();
})
