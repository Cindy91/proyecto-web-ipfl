/*const { Button } = require("bootstrap");

Button.onclick(go);

function go(){

if (document.form.clave.value=='CONTRASEÑA' && document.form.login.value=='USUARIO'){ 
        document.form.submit(); 
    } 
    else{ 
         alert("Porfavor ingrese, nombre de usuario y contraseña correctos."); 
    } 
}*/

btn.addEventListener('click', function validar(){
    var email= document.getElementById("inputEmail3");
    var clave= document.getElementById("inputPassword3");

    if (email.value== "123@456" && clave== "123456"){

    }
    else {
        alert("Introduzca un email y contraseña correctos");
    }
})
