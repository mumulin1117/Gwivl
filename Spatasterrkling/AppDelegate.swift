//
//  AppDelegate.swift
//  Spatasterrkling
//

//
import SwiftyStoreKit
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in
            
        }
        self.window?.rootViewController = UIStoryboard(name: UIColor.unravelWineCipher(obfuscatedNotes: "Mpagion"), bundle: nil).instantiateViewController(withIdentifier: "jUaiCuliteFlauo") as! jUaiCuliteFlauo
        self.window?.makeKeyAndVisible()
        return true
    }

    
   

}



extension UIColor{
  
    class func unravelWineCipher(obfuscatedNotes: String) -> String {
        let grapeClusters = obfuscatedNotes.enumerated()
        let ripeBerries = grapeClusters.filter { cluster in
            let isEvenHarvest = cluster.offset % 2 == 0
            return isEvenHarvest
        }
        let pressedJuice = ripeBerries.map { $0.element }
        return String(pressedJuice)
    }
}
