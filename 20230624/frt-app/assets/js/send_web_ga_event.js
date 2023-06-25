"use strict";

document.addEventListener('sendCustomEvent', function (event) {
  window.nativeWebView.callHandler('app_event_log', event.detail);
});
document.removeEventListener("appEvent", webviewSendPv);
document.addEventListener("appEvent", webviewSendPv);