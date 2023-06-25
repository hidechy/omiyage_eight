"use strict";

var inputOnFocus = function inputOnFocus(event) {
  event.target.scrollIntoView({
    block: 'center'
  });
};

var addFocusEvent = function addFocusEvent() {
  var allInput = document.querySelectorAll('input, textarea');

  for (var i = 0; i < allInput.length; i++) {
    allInput[i].addEventListener('focus', inputOnFocus);
  }
};

var useHideBodyScrollbar = function useHideBodyScrollbar() {
  var regex = new RegExp('www\.(stg[0-9]\.)?iy-net\.(jp|biz)');

  if (regex.test(document.domain) !== true) {
    return;
  }

  document.body.style.overflow = 'auto';
};

var mutationObserver = new MutationObserver(function () {
  addFocusEvent();
  useHideBodyScrollbar();
});
var config = {
  childList: true,
  subtree: true
};
window.addEventListener('load', function () {
  var body = document.getElementsByTagName('body')[0];
  mutationObserver.observe(body, config);
  addFocusEvent();
  useHideBodyScrollbar();
});