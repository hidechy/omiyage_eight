"use strict";

var forward;

if (typeof forward !== "function") {
  forward = function forward() {
    window.nativeWebView.callHandler("Forward");
  };
}

document.removeEventListener("appgoto", forward, true);
document.addEventListener("appgoto", forward, true);
var back;

if (typeof back !== "function") {
  back = function back() {
    window.nativeWebView.callHandler("Back");
  };
}

document.removeEventListener("appbackto", back, true);
document.addEventListener("appbackto", back, true);