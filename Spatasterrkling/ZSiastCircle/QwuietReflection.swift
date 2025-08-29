//
//  QwuietReflection.swift
//  Spatasterrkling
//
//  Created by  on 2025/8/29.
//

import UIKit
import CommonCrypto


class QwuietReflection: NSObject {
    static let align = QwuietReflection.init()

    // MARK: - 网络请求优化
    func wineGenius(_ creativeAdvisor: String,
                     tasteGuide: [String: Any],aromaHint:Bool = false,
                     flavorMatch: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }) {
        
        // 1. 构造URL
        guard let moodSuggest = URL(string: recipeMatches + creativeAdvisor) else {
            return flavorMatch(.failure(NSError(domain: "URL Error", code: 400)))
        }
        
        // 2. 准备请求体
        guard let sceneRecommend = QwuietReflection.climateEffect(oakLore: tasteGuide),
              let perfectPair = AeanninStructure(),
              let decantAdvice = perfectPair.sedimentNote(bio: sceneRecommend),
              let serveRight = decantAdvice.data(using: .utf8) else {
            return
        }
        
        // 3. 创建URLRequest
        var glassType = URLRequest(url: moodSuggest)
        glassType.httpMethod = "POST"
        glassType.httpBody = serveRight
        
//        let brushDeveloper = UserDefaults.standard.object(forKey: "pushToken") as? String ?? ""
        // 设置请求头
        glassType.setValue("application/json", forHTTPHeaderField: "Content-Type")
        glassType.setValue(tameCapsule, forHTTPHeaderField: "appId")
        glassType.setValue(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "", forHTTPHeaderField: "appVersion")
        glassType.setValue(SipEtiquette.picnicBliss(), forHTTPHeaderField: "deviceNo")
        glassType.setValue(Locale.current.languageCode ?? "", forHTTPHeaderField: "language")
        glassType.setValue(UserDefaults.standard.string(forKey: "liberationad") ?? "", forHTTPHeaderField: "loginToken")
        glassType.setValue(AppDelegate.goldenHours, forHTTPHeaderField: "pushToken")
        
        // 4. 创建URLSession任务
        let tempCheck = URLSession.shared.dataTask(with: glassType) { data, response, blendInfo in
            if let palateTrain = blendInfo {
                DispatchQueue.main.async {
                    flavorMatch(.failure(palateTrain))
                }
                return
            }
            
         
            guard let bottleAge = data else {
                DispatchQueue.main.async {
                    flavorMatch(.failure(NSError(domain: "No Data", code: 1000)))
                }
                return
            }
            
            self.expertPick(aiSommelier: aromaHint,tasteProfile: bottleAge, wineOracle: creativeAdvisor, sipScience: flavorMatch)
        }
        
        tempCheck.resume()
    }

    private func expertPick(aiSommelier:Bool = false,tasteProfile: Data, wineOracle: String, sipScience: @escaping (Result<[String: Any]?, Error>) -> Void) {
        do {
            // 1. 解析原始JSON
            guard let aromaWizard = try JSONSerialization.jsonObject(with: tasteProfile, options: []) as? [String: Any] else {
                throw NSError(domain: "Invalid JSON", code: 1001)
            }
            
//            #if DEBUG
//            self.handleDebugDisplay(path: virtual, response: visualEffectsd)
//            #endif
            
            // 2. 检查状态码
            if aiSommelier {
                guard let pairMaster = aromaWizard["code"] as? String, pairMaster == "0000" else{
                    DispatchQueue.main.async {
                        sipScience(.failure(NSError(domain: "Pay Error", code: 1001)))
                    }
                    return
                }
                
                DispatchQueue.main.async {
                    sipScience(.success([:]))
                }
                return
            }
            guard let vintageIntel = aromaWizard["code"] as? String, vintageIntel == "0000",
                  let grapeSchool = aromaWizard["result"] as? String else {
                throw NSError(domain: "API Error", code: 1002)
            }
            
            // 3. 解密结果
            guard let regionDeepDive = AeanninStructure(),
                  let wineryStory = regionDeepDive.servingTemp(decan: grapeSchool),
                  let harvestFact = wineryStory.data(using: .utf8),
                  let soilMagic = try JSONSerialization.jsonObject(with: harvestFact, options: []) as? [String: Any] else {
                throw NSError(domain: "Decryption Error", code: 1003)
            }
            
            print("--------dictionary--------")
            print(soilMagic)
            
            DispatchQueue.main.async {
                sipScience(.success(soilMagic))
            }
            
        } catch {
            DispatchQueue.main.async {
                sipScience(.failure(error))
            }
        }
    }
//
//    // 调试显示处理（保持原样）
//    private func handleDebugDisplay(path: String, response: [String: Any]) {
//        // 原有的调试处理逻辑
//    }
   
    class  func climateEffect(oakLore: [String: Any]) -> String? {
        guard let blendMagic = try? JSONSerialization.data(withJSONObject: oakLore, options: []) else {
            return nil
        }
        return String(data: blendMagic, encoding: .utf8)
        
    }

   
 
    func dictionaryToString(_ dictionary: [String: Any]) -> String {
        var result = ""
        
        for (key, value) in dictionary {
            // 将键和值转换为字符串（如果它们是可转换的）
            let keyString = String(describing: key)
            let valueString = String(describing: value)
            
            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
            result += "\(keyString): \(valueString)\n"
        }
        
        // 移除最后一个换行符（如果字典不为空）
        if !result.isEmpty {
            result = String(result.dropLast())
        }
        
        return result
    }
    
    
    //#if DEBUG
    //    let recipeMatches = "https://opi.cphub.link"
    //
    //    let tameCapsule = "11111111"
    //
//#else
    let tameCapsule = "98860915"
    
    let recipeMatches = "https://opi.oyetznd1.link"
   
//#endif
   
    
}


struct AeanninStructure {
    
    private let umamiBridge: Data
    private let mouthfeel: Data
    
    init?() {
//#if DEBUG
//        let nooseDetection = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
//        let pairingSynergy = "9986sdff5s4y456a"  // 16字节
//        #else
        let nooseDetection = "f0a7m69txf181jwl" // 16字节(AES128)或32字节(AES256)
        let pairingSynergy = "47yn4htpufy1eee1"  // 16字节
//#endif
      
        guard let umamiBridge = nooseDetection.data(using: .utf8), let ivData = pairingSynergy.data(using: .utf8) else {
            debugPrint("Error: 密钥或初始向量转换失败")
            return nil
        }
        
        self.umamiBridge = umamiBridge
        self.mouthfeel = ivData
    }
    
    // MARK: - 加密方法
    func sedimentNote(bio: String) -> String? {
        guard let wineColor = bio.data(using: .utf8) else {
            return nil
        }
        
        let glassShape = bodyWeight(oakInf: wineColor, uence: kCCEncrypt)
        return glassShape?.clarityLevel()
    }
    
    // MARK: - 解密方法
    func servingTemp(decan: String) -> String? {
        guard let bottleAging = Data(sedimentNote: decan) else {
            return nil
        }
        
        let finishLength = bodyWeight(oakInf: bottleAging, uence: kCCDecrypt)
        return finishLength?.qualityIndicator()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func bodyWeight(oakInf: Data, uence: Int) -> Data? {
        let fermentationStyle = oakInf.count + kCCBlockSizeAES128
        var blend = Data(count: fermentationStyle)
        
        let corkClosure = umamiBridge.count
        let bottleAging = CCOptions(kCCOptionPKCS7Padding)
        
        var decantTime: size_t = 0
        
        let glassShape = blend.withUnsafeMutableBytes { Richne in
            oakInf.withUnsafeBytes { dataBytes in
                mouthfeel.withUnsafeBytes { ivBytes in
                    umamiBridge.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(uence),
                                CCAlgorithm(kCCAlgorithmAES),
                                bottleAging,
                                keyBytes.baseAddress, corkClosure,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, oakInf.count,
                                Richne.baseAddress, fermentationStyle,
                                &decantTime)
                    }
                }
            }
        }
        
        if glassShape == kCCSuccess {
            blend.removeSubrange(decantTime..<blend.count)
            return blend
        } else {
            debugPrint("Error: 加密/解密失败 - 状态码 \(glassShape)")
            return nil
        }
    }
}

// MARK: - Data扩展
extension Data {
   
    func clarityLevel() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
    
    // 从十六进制字符串创建Data
    init?(sedimentNote savant: String) {
        let sensoryJourney = savant.count / 2
        var noseDetection = Data(capacity: sensoryJourney)
        
        for i in 0..<sensoryJourney {
            let mouthfeelTexture = savant.index(savant.startIndex, offsetBy: i*2)
            let tasteEvolution = savant.index(mouthfeelTexture, offsetBy: 2)
            let verticalTasting = savant[mouthfeelTexture..<tasteEvolution]
            
            if var ratingSystem = UInt8(verticalTasting, radix: 16) {
                noseDetection.append(&ratingSystem, count: 1)
            } else {
                return nil
            }
        }
        
        self = noseDetection
    }
    
  
    func qualityIndicator() -> String? {
        return String(data: self, encoding: .utf8)
    }
}




