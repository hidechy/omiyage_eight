"use strict";

var idForm = document.getElementById("sevIdInputForm");

if (idForm) {
  idForm.querySelector("input[name='sveIdInput']").value = "%s";
  idForm.submit();
}

var passwordForm = document.getElementById("pswInputForm");

if (passwordForm) {
  passwordForm.querySelector("input[type='password']").value = "%s";
  pswLoginBtnClick();
}