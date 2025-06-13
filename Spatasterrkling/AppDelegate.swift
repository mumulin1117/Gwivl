//
//  AppDelegate.swift
//  Spatasterrkling
//
//  Created by mumu on 2025/6/12.
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
        self.window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "jUaiCuliteFlauo") as! jUaiCuliteFlauo
        self.window?.makeKeyAndVisible()
        return true
    }

    


}

