"use strict";

var touchedBackButton;

if (typeof touchedBackButton !== "function") {
  touchedBackButton = function touchedBackButton(event) {
    event.stopImmediatePropagation(); // ロード系のイベントが複数回呼ばれるので、DOMを全て削除する

    document.head.innerHTML = "";
    document.body.innerHTML = "";
    window.nativeWebView.callHandler("TouchedBackButton");
  };
}

var headerProcessFinished = false;

var headerProcess = function headerProcess() {
  var header = document.getElementById("header");

  if (headerProcessFinished || header === null) {
    return;
  }

  headerProcessFinished = true;
  var backButton = document.getElementById("backbutton");

  if (backButton) {
    backButton.removeEventListener("click", touchedBackButton, {
      capture: true
    });
    backButton.addEventListener("click", touchedBackButton, {
      capture: true,
      once: true
    });
  }

  window.nativeWebView.callHandler("HeaderRendered");
};

var mutationObserver = new MutationObserver(function () {
  headerProcess();
});
var config = {
  childList: true,
  subtree: true
};
var body = document.body;
mutationObserver.observe(body, config);
headerProcess();