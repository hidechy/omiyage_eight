document.querySelector('a[href^="{{iynsLoginUrl}}"]')
    ?.addEventListener("touchstart", (event) => {
        window.nativeWebView.callHandler("TransitionToTop", "");
    });
