function logar(){
  let email=  document.querySelector("#email").value;
  let senha= document.querySelector("#senha").value;

    if (email === "professor" && senha ==="123456") {
        window.location.href="painel.html";
    } else {
        alert("Não é possível ser acessado")
    }

}