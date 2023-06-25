var forward;
if (typeof forward !== "function") {
    forward = function () {
        window.nativeWebView.callHandler("Forward");
    };
}
document.removeEventListener("appgoto", forward, true);
document.addEventListener("appgoto", forward, true);

var back;
if (typeof back !== "function") {
    back = function () {
        window.nativeWebView.callHandler("Back");
    };
}
document.removeEventListener("appbackto", back, true);
document.addEventListener("appbackto", back, true);