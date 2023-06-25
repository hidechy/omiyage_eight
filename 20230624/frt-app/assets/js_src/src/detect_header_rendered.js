let touchedBackButton;
if (typeof touchedBackButton !== "function") {
  touchedBackButton = function (event) {
    event.stopImmediatePropagation();
    // ロード系のイベントが複数回呼ばれるので、DOMを全て削除する
    document.head.innerHTML = "";
    document.body.innerHTML = "";
    window.nativeWebView.callHandler("TouchedBackButton");
  };
}

let headerProcessFinished = false;
const headerProcess = function () {
  const header = document.getElementById("header");
  if (headerProcessFinished || header === null) {
    return;
  }
  headerProcessFinished = true;
  const backButton = document.getElementById("backbutton");
  if (backButton) {
    backButton.removeEventListener("click", touchedBackButton, {capture: true});
    backButton.addEventListener("click", touchedBackButton, {capture: true, once: true});
  }
  window.nativeWebView.callHandler("HeaderRendered");
}

const mutationObserver = new MutationObserver(function () {
  headerProcess();
});

const config = {
  childList: true, subtree: true
};

const body = document.body;
mutationObserver.observe(body, config);
headerProcess();
