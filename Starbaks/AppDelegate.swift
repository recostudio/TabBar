
  import UIKit
  @UIApplicationMain
  class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      
      window = UIWindow(frame: UIScreen.main.bounds)
      window?.makeKeyAndVisible()
//      window?.backgroundColor = .systemBackground
      window?.backgroundColor = .orange
      
      let tabBarController = UITabBarController()
      tabBarController.viewControllers = [ViewController()]
      
      let appearance = UITabBarAppearance()
      appearance.configureWithOpaqueBackground()
      appearance.backgroundColor = .systemBackground
      tabBarController.tabBar.standardAppearance = appearance
      tabBarController.tabBar.scrollEdgeAppearance = tabBarController.tabBar.standardAppearance
      
      window?.rootViewController = tabBarController

      return true
    }
  }



