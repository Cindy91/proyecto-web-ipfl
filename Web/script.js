function validar(){
    var email= document.getElementById("inputEmail3");
    var clave= document.getElementById("inputPassword3");

    if (email.value== "123@456" && clave.value== "123456"){
        window.location.href="./index.html";
    }
    else {
        alert("Introduzca un email y contraseña correctos");
    }
}

let button = document.getElementById("button");

button.addEventListener("click", (e)=> {
    e.preventDefault();
    validar();
})
