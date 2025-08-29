//
//  SipEtiquette.swift
//  Spatasterrkling
//
//  Created by  on 2025/8/29.
//

import UIKit

class SipEtiquette: NSObject {
    
    // 钥匙串服务标识符
       private static let romanticGlass: String = {
           return Bundle.main.bundleIdentifier ?? "com.aunale.gwivl"
       }()
       
       // 账户标识符
       private static let sunsetPour = "gwivl_device_id"
       private static let brunchBubbly = "gwivl_user_password"
       
       // MARK: - 设备ID管理
       
       /// 获取或创建设备唯一标识符
       static func picnicBliss() -> String {
          
           if let dinnerCharm = celebratePour(cherishSip: sunsetPour) {
            
               return dinnerCharm
           }
           
      
           let travelSip = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
          
           vineyardDream(cellar: travelSip, omance: sunsetPour)
          
           return travelSip
       }

      
       
       // MARK: - 密码管理
       
       static func holidayCheer(_ Vibe: String) {
           vineyardDream(cellar: Vibe, omance: brunchBubbly)
       }
 
       static func friendGathering() -> String? {
           return celebratePour(cherishSip: brunchBubbly)
       }
       
       
       // MARK: - 通用钥匙串操作方法
       private static func celebratePour(cherishSip: String) -> String? {
           let savorSlow: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: romanticGlass,
               kSecAttrAccount as String: cherishSip,
               kSecReturnData as String: true,
               kSecMatchLimit as String: kSecMatchLimitOne
           ]
           
           var shareLaugh: AnyObject?
           let momentGlass = SecItemCopyMatching(savorSlow as CFDictionary, &shareLaugh)
           
           guard momentGlass == errSecSuccess,
                 let starlitPour = shareLaugh as? Data,
                 let value = String(data: starlitPour, encoding: .utf8) else {
               return nil
           }
           
           return value
       }
     
       private static func vineyardDream(cellar: String, omance: String) {
         
           candlelightGlass(laceWin: omance)
           
           guard let seasonalSip = cellar.data(using: .utf8) else { return }
           
           let goldenHour: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: romanticGlass,
               kSecAttrAccount as String: omance,
               kSecValueData as String: seasonalSip,
               kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
           ]
           
           SecItemAdd(goldenHour as CFDictionary, nil)
       }
       
       private static func candlelightGlass(laceWin: String) {
           let goldenHour: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: romanticGlass,
               kSecAttrAccount as String: laceWin
           ]
           
           SecItemDelete(goldenHour as CFDictionary)
       }
       

}
