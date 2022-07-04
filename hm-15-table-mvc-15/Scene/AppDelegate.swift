import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        if #available(iOS 15, *) {
               let navigationBarAppearance = UINavigationBarAppearance()
               navigationBarAppearance.configureWithDefaultBackground()
               UINavigationBar.appearance().standardAppearance = navigationBarAppearance
               UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance

               let tabBarAppearance = UITabBarAppearance()
               tabBarAppearance.configureWithDefaultBackground()
               UITabBar.appearance().standardAppearance = tabBarAppearance
               UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
              }

        let navigationController = UINavigationController(rootViewController: ViewController())

        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()

        return true
    }
}

