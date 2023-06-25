import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    // FlutterViewControllerの取得
    let controller = window?.rootViewController as! FlutterViewController
    // MethodChannelの生成
    let initGoogleMapChannel = FlutterMethodChannel(name:"jp.itoyokado.netsuper/initGoogleMap",binaryMessenger: controller.binaryMessenger)
    // MethodChannelを介してGoogleMapAPIを登録
    initGoogleMapChannel.setMethodCallHandler { call, result in
        switch call.method {
        case "initGoogleMap":
            guard let api = call.arguments as? String else {
                result("Argument acquisition failure")
                return
            }
            GMSServices.provideAPIKey(api)
            result("Initialization completed")
        default:
            result("Method that does not exist")
        }
        
    }
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

    override func applicationWillResignActive(_ application: UIApplication) {
        addBlurViews()
    }

    override func applicationDidBecomeActive(_ application: UIApplication) {
        removeBlurViews()
    }
}

private extension AppDelegate {
    var blurViewTag: Int {
        return 999999
    }

    func addBlurViews() {
        for window in UIApplication.shared.windows {
            let blurEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView.frame = window.frame
            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            blurEffectView.tag = blurViewTag
            window.addSubview(blurEffectView)
        }
    }

    func removeBlurViews() {
        for window in UIApplication.shared.windows {
            if let blurView = window.viewWithTag(blurViewTag) {
                blurView.removeFromSuperview()
            }
        }
    }
}
