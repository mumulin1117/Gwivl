//
//  DinnerCenterpiectroller.swift
//  Spatasterrkling
//
//  Created by  on 2025/8/29.
//

import UIKit

import SwiftyStoreKit

import WebKit
import JGProgressHUD

class DinnerCenterpiectroller: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var estateBottled:WKWebView?
    lazy var reserveSelection: UIActivityIndicatorView = {
        let limitedEdition = UIActivityIndicatorView.init(style: .large)
        limitedEdition.hidesWhenStopped = true
        limitedEdition.frame.size = CGSize.init(width: 50, height: 50)
        limitedEdition.color = .white
        return limitedEdition
    }()
    var virtualCellar:TimeInterval = Date().timeIntervalSince1970
    
    private  var bottleJournal = false
    private var tastingLog:String
    
    init(flavorDiary:String,pourS:Bool) {
        tastingLog = flavorDiary
        
        bottleJournal = pourS
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        estateBottled?.configuration.userContentController.add(self, name: "rechargePay")
        estateBottled?.configuration.userContentController.add(self, name: "Close")
        estateBottled?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        estateBottled?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func sipChronicles()  {
        let glassCollection = UIImage(named: "vintageYear")
        
        let corkMemory = UIImageView(image:glassCollection )
        corkMemory.frame = self.view.frame
        corkMemory.contentMode = .scaleAspectFill
        view.addSubview(corkMemory)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        sipChronicles()
        if bottleJournal == true {
            let  labelArchive = UIButton.init()
            labelArchive.setBackgroundImage(UIImage.init(named: "RectangleERT"), for: .normal)
            labelArchive.setTitle("Log in", for: .normal)
            labelArchive.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            labelArchive.setTitleColor(.white, for: .normal)
            labelArchive.isUserInteractionEnabled = false
            view.addSubview(labelArchive)
            labelArchive.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                labelArchive.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                labelArchive.heightAnchor.constraint(equalToConstant: 52),
                labelArchive.widthAnchor.constraint(equalToConstant: 335),
                labelArchive.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let vintageTreasure = WKWebViewConfiguration()
        vintageTreasure.allowsAirPlayForMediaPlayback = false
        vintageTreasure.allowsInlineMediaPlayback = true
        vintageTreasure.preferences.javaScriptCanOpenWindowsAutomatically = true
        vintageTreasure.mediaTypesRequiringUserActionForPlayback = []
        vintageTreasure.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        estateBottled = WKWebView.init(frame: UIScreen.main.bounds, configuration: vintageTreasure)
        estateBottled?.isHidden = true
        estateBottled?.translatesAutoresizingMaskIntoConstraints = false
        estateBottled?.scrollView.alwaysBounceVertical = false
        
        estateBottled?.scrollView.contentInsetAdjustmentBehavior = .never
        estateBottled?.navigationDelegate = self
        
        estateBottled?.uiDelegate = self
        estateBottled?.allowsBackForwardNavigationGestures = true
   
        if let regionPassport = URL.init(string: tastingLog) {
            estateBottled?.load(NSURLRequest.init(url:regionPassport) as URLRequest)
            virtualCellar = Date().timeIntervalSince1970
        }
        self.view.addSubview(estateBottled!)
        
        
        
        reserveSelection.center = self.view.center
        self.view.addSubview(reserveSelection)
        reserveSelection.startAnimating()
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        estateBottled?.isHidden = false
        
        
        reserveSelection.stopAnimating()
        if bottleJournal == true {
            let successHUD = JGProgressHUD(style: .dark)
                       
            successHUD.indicatorView = JGProgressHUDSuccessIndicatorView()
            successHUD.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "Lkohgxiznb t jszuwcwczeisxsefgunlf!")
            successHUD.show(in: self.view)
            successHUD.dismiss(afterDelay: 2.0)
           
            bottleJournal = false
            
        }

        let wineryVisits = "/opi/v1/seasonalsipt"
         let harvestMemories: [String: Any] = [
            "seasonalsipo":"\(Int(Date().timeIntervalSince1970*1000 - self.virtualCellar*1000))"
         ]
      
        QwuietReflection.align.wineGenius( wineryVisits, tasteGuide: harvestMemories)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let pairingIdeas = message.body as? Dictionary<String,Any> {
           let recipeMatches = pairingIdeas["batchNo"] as? String ?? ""
           let moodSelection = pairingIdeas["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            reserveSelection.startAnimating()
            
            SwiftyStoreKit.purchaseProduct(recipeMatches, atomically: true) { artisticTrailblazer in
                self.reserveSelection.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let occasionPicker) = artisticTrailblazer {
                    let colorDifferentiation = occasionPicker.transaction.downloads
                    
                    
                    if !colorDifferentiation.isEmpty {
                        
                        SwiftyStoreKit.start(colorDifferentiation)
                    }
                    
                  
                   
                   
                
                    guard let timeCapsule = SwiftyStoreKit.localReceiptData,
                          let palateAnalysis = occasionPicker.transaction.transactionIdentifier,
                          palateAnalysis.count > 5
                    else {
                        let sexthyu = JGProgressHUD(style: .dark)
                           
                        sexthyu.textLabel.text = "Pay failed"
                        sexthyu.show(in: self.view)
                        
                        
                        return
                      }
                    
                    guard let aromaAssistant = try? JSONSerialization.data(withJSONObject: ["orderCode":moodSelection], options: [.prettyPrinted]),
                          let vintageGuide = String(data: aromaAssistant, encoding: .utf8) else{
                        
                        let regionExpert = JGProgressHUD(style: .dark)
                           
                        regionExpert.textLabel.text = "Pay failed"
                        regionExpert.show(in: self.view)
                        regionExpert.dismiss(afterDelay: 2.0)
                        return
                    }

                    QwuietReflection.align.wineGenius("/opi/v1/wineryisitp", tasteGuide: [
                        "wineryisitp":timeCapsule.base64EncodedString(),//payload
                        "wineryisitt":palateAnalysis,//transactionId
                        "wineryisitc":vintageGuide//callbackResult
                    ],aromaHint: true) { grapeCompanion in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch grapeCompanion{
                        case .success(_):
                            let successHUD = JGProgressHUD(style: .dark)
                                       
                            successHUD.indicatorView = JGProgressHUDSuccessIndicatorView()
                            successHUD.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "Pbaqyt bsfufcwcuepsnsmfduclv!")
                            successHUD.show(in: self.view)
                            successHUD.dismiss(afterDelay: 2.0)
                            
                           
                        case .failure(let error):
                            
                            let sexthyu = JGProgressHUD(style: .dark)
                               
                            sexthyu.textLabel.text = "Pay failed"
                            sexthyu.show(in: self.view)
                            sexthyu.dismiss(afterDelay: 2.0)
                        }
                    }
                    
                    if occasionPicker.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(occasionPicker.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = artisticTrailblazer {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        let sexthyu = JGProgressHUD(style: .dark)
                           
                        sexthyu.textLabel.text = error.localizedDescription
                        sexthyu.show(in: self.view)
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "liberationad")// 清除本地token
           
            let pairingGenius = UINavigationController.init(rootViewController: IopolidayCheerontroller.init())
            pairingGenius.navigationBar.isHidden = true
            
          
            BrunchDelight.vineyardInsights?.rootViewController = pairingGenius
        }
        
        if message.name == "pageLoaded" {
            estateBottled?.isHidden = false
            reserveSelection.stopAnimating()
            
            
        }
    }
   
    
}
