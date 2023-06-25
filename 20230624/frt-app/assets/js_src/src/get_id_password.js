document.getElementById("sevIdInputForm")
    ?.addEventListener("submit", (event) => {
        let id = document.getElementById("input-01").value;
        window.nativeWebView.callHandler("GetId", id);
    });

document.getElementById("pswInputForm")
    ?.addEventListener("submit", (event) => {
        let password = document.getElementById("input-01").value;
        window.nativeWebView.callHandler("GetPassword", password);
    });