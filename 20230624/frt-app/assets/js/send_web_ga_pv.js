"use strict";

var webviewSendPv;

if (typeof webviewSendPv !== "function") {
  webviewSendPv = function webviewSendPv(event) {
    window.nativeWebView.callHandler('app_page_view_log', event.detail);
  };
}

document.removeEventListener("appPageView", webviewSendPv);
document.addEventListener("appPageView", webviewSendPv);