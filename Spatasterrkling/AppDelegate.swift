//
//  AppDelegate.swift
//  Spatasterrkling
//

//
import SwiftyStoreKit
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var goldenHours:String = ""

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
           
                    
            for aitmt in resultPaying {
                switch aitmt.transaction.transactionState {
                case .purchased, .restored:
                   
                    let miaj = aitmt.transaction.downloads
                    
                    if !miaj.isEmpty  {
                   
                        SwiftyStoreKit.start(miaj)
                    } else if aitmt.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(aitmt.transaction)
                    }
                case .failed, .purchasing, .deferred:
                   break
                @unknown default:
                    break
                }
            }
               
        }
        
        wineryStory()
        harvestFact()
        
        self.window?.rootViewController = BrunchDelight.init()
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



extension AppDelegate:UNUserNotificationCenterDelegate{
    private func wineryStory() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { quietSip, _ in
            DispatchQueue.main.async {
                if quietSip {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
     
        AppDelegate.goldenHours = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
    }
    
    private func harvestFact()  {
        let soilMagic = UITextField()
        soilMagic.isSecureTextEntry = true

        if (!window!.subviews.contains(soilMagic))  {
            window!.addSubview(soilMagic)
            
            soilMagic.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            soilMagic.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(soilMagic.layer)
           
            
            if #available(iOS 17.0, *) {
                
                soilMagic.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                soilMagic.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    
}
