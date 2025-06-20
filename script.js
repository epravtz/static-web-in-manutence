// Lê variável de ambiente injetada como string no template NGINX
document.addEventListener("DOMContentLoaded", function () {
  fetch('/env.js')
    .then(response => response.text())
    .then(jsCode => {
      eval(jsCode); // define window.MENSAGEM e window.TITULO
      document.getElementById("mensagem").innerText = window.MENSAGEM || "Volte em breve!";
      document.getElementById("titulo").innerText = window.TITULO || "Web para laboratório DevOps";
      document.title = window.TITULO || "Pravtz - Devops";
    })
    .catch(() => {
      document.getElementById("mensagem").innerText = "Volte em breve!";
      document.getElementById("titulo").innerText = "Web para laboratório DevOps";
      document.title = "Pravtz - Devops";
    });
});
