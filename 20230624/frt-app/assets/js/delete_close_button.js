"use strict";

document.querySelectorAll('a[href="#"]').forEach(function (element) {
  element.remove();
});