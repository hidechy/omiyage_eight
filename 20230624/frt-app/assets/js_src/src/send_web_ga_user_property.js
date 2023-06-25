var webviewUserProperty;
if (typeof webviewUserProperty !== "function") {
    webviewUserProperty = function (event) {
        window.nativeWebView.callHandler('app_user_property_log', event.detail);
    };
}
document.removeEventListener("appUserProperty", webviewUserProperty);
document.addEventListener("appUserProperty", webviewUserProperty);