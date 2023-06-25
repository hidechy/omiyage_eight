"use strict";

var orderCompletedEvent;
var webViewPurchaseEvent;

if (typeof orderCompletedEvent !== "function") {
  orderCompletedEvent = function orderCompletedEvent(event) {
    window.nativeWebView.callHandler("orderCompleted", event.detail.total_price);
  };

  webViewPurchaseEvent = function webViewPurchaseEvent(event) {
    window.nativeWebView.callHandler("sendAppPurchase", event.detail);
  };
} // Androidでイベントが2回発火するため、登録されるListenerを1回に限定する


document.removeEventListener("appordercompleted", orderCompletedEvent);
document.addEventListener("appordercompleted", orderCompletedEvent);
document.removeEventListener("appPurchase", webViewPurchaseEvent);
document.addEventListener("appPurchase", webViewPurchaseEvent);