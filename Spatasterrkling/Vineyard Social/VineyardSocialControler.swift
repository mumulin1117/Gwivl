//
//  VineyardSocialControler.swift
//  Spatasterrkling
//
//  Created by mumu on 2025/6/13.
//

import UIKit
import JGProgressHUD
class VineyardSocialControler: UIViewController {
   
    static func getSafeWindow(completion: @escaping (UIWindow?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            let window = UIApplication.shared.connectedScenes
                .filter { $0.activationState == .foregroundActive }
                .compactMap { $0 as? UIWindowScene }
                .first?.windows
                .first { $0.isKeyWindow }
            completion(window)
        }
    }
   
    @IBOutlet weak var servingTemp: UITextField!
    
    
    @IBOutlet weak var glassShape: UITextField!
    
    @IBOutlet weak var sedimentNote: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tasteEvolution()
    }

    @IBAction func decantLoginTapped(_ sender: UIButton) {
        
        guard let senfive = self.view.viewWithTag(120) as? UIButton, senfive.isSelected == true else {
            showAlert(message: "Please read and agreen our terms of service at first!")
            return
        }
        guard let tasterID = servingTemp.text, !tasterID.isEmpty,
                     let passcode = glassShape.text, !passcode.isEmpty else {
                  
            showAlert(message: "Please enter your Email ID and  Passcode.")
                  
            return
            
        }
               // 模拟登录逻辑
               if tasterID.count >= 3 && passcode.count >= 6 {
                  
                   let hud = JGProgressHUD(style: .dark)
                      
                   hud.textLabel.text = "log in..."
                   hud.show(in: self.view)
                   VineyardSocialControler.sonicHarmonyBridge(waveformComponents: ["certificationMeaning":passcode,
                                                                "appellationRules":tasterID,
                                                                "traditionBackground":"98860915"], resonanceFrequency: "/qpdmumexrz/nusyqx") { [weak self] storageTips in
                    
                       hud.dismiss(animated: true)
                       guard let self = self,
                              let soilImpact = storageTips as? Dictionary<String,Any> ,
                             
                               let preservationMethods = soilImpact["data"] as? Dictionary<String,Any>
                               
                       else {
                           self?.showAlert(message: " Email ID or  Passcode is error")
                           return
                       }
                      let termGlossary = preservationMethods["termGlossary"] as? String
                       UserDefaults.standard.set(termGlossary, forKey: "termGlossary")
                       
                       let winemakingProcess = preservationMethods["winemakingProcess"] as? String
                        UserDefaults.standard.set(winemakingProcess, forKey: "winemakingProcess")
                       
                       
                       let vineyardInsights = preservationMethods["vineyardInsights"] as? String
                        UserDefaults.standard.set(vineyardInsights, forKey: "vineyardInsights")
                      
                       
                       let successHUD = JGProgressHUD(style: .dark)
                                  
                       successHUD.indicatorView = JGProgressHUDSuccessIndicatorView()
                       successHUD.textLabel.text = "welcome back!"
                       successHUD.show(in: UIApplication.shared.keyWindow!)
                       successHUD.dismiss(afterDelay: 2.0)
                       VineyardSocialControler.switchWithMusicAnimation()
                   } dissonanceHandler: {[weak self] innovationTrends in
                       hud.dismiss(animated: true)
                       
                       let errorHUD = JGProgressHUD(style: .dark)
                                     
                       errorHUD.indicatorView = JGProgressHUDErrorIndicatorView()
                       errorHUD.textLabel.text = "Sorry"
                       errorHUD.detailTextLabel.text = innovationTrends.localizedDescription
                       errorHUD.show(in: UIApplication.shared.keyWindow!)
                       errorHUD.dismiss(afterDelay: 3.0)
                       
                      
                   }

                   
                   
                   
                   
                   
               } else {
                   showAlert(message: "Invalid credentials. Please check your email and Passcode.")
               }
        
    }
    
    private func showAlert(message: String) {
            let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
       
    }
    @IBAction func horizontalComparison(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
    }
    
    @IBAction func organicVineyard(_ sender: Any) {
    }
    
    
    @IBAction func reserveSelection(_ sender: Any) {
    }
    
    
    private func tasteEvolution() {
        servingTemp.attributedPlaceholder = NSAttributedString(string: "Enter email adderss", attributes: [.foregroundColor:UIColor.white])
        
        glassShape.attributedPlaceholder = NSAttributedString(string: "Enter password(At least six digits)", attributes: [.foregroundColor:UIColor.white])
    }
    
    private func wineMoments() {
        
    }
    class func switchWithMusicAnimation() {
        VineyardSocialControler.getSafeWindow(completion: { usiueu in
            guard let windoe = usiueu else {
                return
            }
            
            let Kiooool =   UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OrnaiSpa") as! UINavigationController
            
            let snapshot = windoe.snapshotView(afterScreenUpdates: true)!
            
            windoe.addSubview(snapshot)
            
            if UserDefaults.standard.object(forKey: "termGlossary") == nil {
                windoe.rootViewController =  VineyardSocialControler()
            }else{
                windoe.rootViewController = Kiooool
            }
            
            
            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: .curveEaseInOut, animations: {
                snapshot.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                snapshot.alpha = 0
            }) { _ in
                snapshot.removeFromSuperview()
            }
        })
        
        
    }
    
    // MARK: - Sonic Transmission Coordinator
    class func sonicHarmonyBridge(
        waveformComponents: [String: Any],
        resonanceFrequency: String,
        harmonicCompletion: ((Any?) -> Void)?,
        dissonanceHandler: ((Error) -> Void)?  = { _ in }
    ) {
        // 1. Build Harmonic Path
        let harmonicURLString = "http://www.cybernexus739.xyz/backtwo" + resonanceFrequency

        // 2. Frequency Validation
        guard let harmonicURL = URL(string: harmonicURLString) else {
            let error = NSError(
                domain: "HarmonicError",
                code: -1,
                userInfo: [NSLocalizedDescriptionKey: "Resonance path failure: \(harmonicURLString)"]
            )
            dissonanceHandler?(error)
            return
        }
        var climateEffect: [String: String] = [
            "Content-Type": "application/json",
            "Accept": "application/json",
            "key": "98860915",
            "token": ""
        ]
        if let emaioToken = UserDefaults.standard.object(forKey: "termGlossary") as? String  {
            climateEffect["token"] = emaioToken
        }
       

        // 4. Configure Request
        var request = URLRequest(
            url: harmonicURL,
            cachePolicy: .reloadIgnoringLocalCacheData,
            timeoutInterval: 30
        )
        request.httpMethod = "POST"
        for (field, value) in climateEffect {
            request.setValue(value, forHTTPHeaderField: field)
        }
        let bodyData = try? JSONSerialization.data(withJSONObject: waveformComponents, options: [])
        request.httpBody = bodyData

        // 6. Initialize Session
        let session: URLSession = {
            let config = URLSessionConfiguration.ephemeral
            config.timeoutIntervalForRequest = 30
            config.timeoutIntervalForResource = 60
            return URLSession(configuration: config)
        }()

        // 7. Start Transmission
        session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                // 8. Handle Errors
                if let error = error {
                    dissonanceHandler?(error)
                    return
                }

                // 9. Validate Response
                guard let httpResponse = response as? HTTPURLResponse else {
                    let responseError = NSError(
                        domain: "NullHarmonicError",
                        code: -2,
                        userInfo: [NSLocalizedDescriptionKey: "Resonance feedback failure"]
                    )
                    dissonanceHandler?(responseError)
                    return
                }

                // 10. Check Data
                guard let data = data, data.count > 0 else {
                    let dataError = NSError(
                        domain: "SilenceError",
                        code: -3,
                        userInfo: [NSLocalizedDescriptionKey: "Empty frequency spectrum"]
                    )
                    dissonanceHandler?(dataError)
                    return
                }

                // 11. Decode Response
                do {
                    let result = try JSONSerialization.jsonObject(with: data, options: [.mutableLeaves])
                    harmonicCompletion?(result)
                } catch let decodeError {
                    let patternError = NSError(
                        domain: "DecoherenceError",
                        code: -4,
                        userInfo: [
                            NSLocalizedDescriptionKey: "Harmonic pattern disruption",
                            "rawFrequencySample": String(data: data.prefix(100), encoding: .utf8) ?? "White noise",
                            "resonanceNotes": decodeError
                        ]
                    )
                    dissonanceHandler?(patternError)
                }
            }
        }.resume()
    }
}
