import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
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
        return true
    }
}

