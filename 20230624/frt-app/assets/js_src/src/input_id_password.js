let idForm = document.getElementById("sevIdInputForm");
if (idForm) {
    idForm.querySelector("input[name='sveIdInput']").value = "%s";
    idForm.submit();
}

let passwordForm = document.getElementById("pswInputForm");
if (passwordForm) {
    passwordForm.querySelector("input[type='password']").value = "%s";
    pswLoginBtnClick();
}
