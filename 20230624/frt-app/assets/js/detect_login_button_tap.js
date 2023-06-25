"use strict";

var _document$querySelect;

(_document$querySelect = document.querySelector('a[href^="{{iynsLoginUrl}}"]')) === null || _document$querySelect === void 0 ? void 0 : _document$querySelect.addEventListener("touchstart", function (event) {
  window.nativeWebView.callHandler("TransitionToTop", "");
});