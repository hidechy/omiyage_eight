"use strict";

var _document$getElementB, _document$getElementB2;

(_document$getElementB = document.getElementById("sevIdInputForm")) === null || _document$getElementB === void 0 ? void 0 : _document$getElementB.addEventListener("submit", function (event) {
  var id = document.getElementById("input-01").value;
  window.nativeWebView.callHandler("GetId", id);
});
(_document$getElementB2 = document.getElementById("pswInputForm")) === null || _document$getElementB2 === void 0 ? void 0 : _document$getElementB2.addEventListener("submit", function (event) {
  var password = document.getElementById("input-01").value;
  window.nativeWebView.callHandler("GetPassword", password);
});