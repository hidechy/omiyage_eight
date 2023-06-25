const inputOnFocus = (event) => {
  event.target.scrollIntoView({
    block: 'center',
  });
};

const addFocusEvent = () => {
  const allInput = document.querySelectorAll('input, textarea');
  for (let i = 0; i < allInput.length; i++) {
    allInput[i].addEventListener('focus', inputOnFocus);
  }
}

const useHideBodyScrollbar = () => {
  const regex = new RegExp('www\.(stg[0-9]\.)?iy-net\.(jp|biz)');
  if (regex.test(document.domain) !== true) {
    return;
  }
  document.body.style.overflow = 'auto';
}

const mutationObserver = new MutationObserver(function () {
  addFocusEvent();
  useHideBodyScrollbar();
});

const config = {
  childList: true, subtree: true,
};

window.addEventListener('load', function () {
  const body = document.getElementsByTagName('body')[0];
  mutationObserver.observe(body, config);
  addFocusEvent();
  useHideBodyScrollbar();
});
