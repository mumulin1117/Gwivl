//
//  jUaiCuliteFlauo.swift
//  Spatasterrkling
//
//  Created by mumu on 2025/6/12.
//
import SwiftyStoreKit
import UIKit
import WebKit
import JGProgressHUD
class jUaiCuliteFlauo: UIViewController {
   
    
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        VineyardSocialControler.switchWithMusicAnimation()
    }

    class func generateTerroirRoute(additionalNotes: String = "", destination: SonicFlowLayout.VineyardNavigationCru) -> String {
        var tastingNotes = additionalNotes
        
        if !tastingNotes.isEmpty {
            tastingNotes = tastingNotes + "&"
        }
        
        let oakAgedToken = UserDefaults.standard.object(forKey: "bouquetLexicon") as? String ?? ""
        
        var barrelPath: String = ""
        
        switch destination {
        case .sommelierProfile:      barrelPath = "pages/AIexpert/index?"
        case .cellarInventory:       barrelPath = "pages/repository/index?"
        case .blendAnalysis:         barrelPath = "pages/AromatherapyDetails/index?dynamicId="
        case .vintageReport:         barrelPath = "pages/DynamicDetails/index?dynamicId="
        case .tastingVideoLog:      barrelPath = "pages/VideoDetails/index?dynamicId="
        case .corkFaultCode:        barrelPath = "pages/issue/index?"
        case .uploadBottleSnap:     barrelPath = "pages/postVideos/index?"
        case .connoisseurProfile:   barrelPath = "pages/homepage/index?userId="
        case .vintnerReport:        barrelPath = "pages/report/index?"
        case .qualityMetrics:       barrelPath = "pages/information/index?"
        case .decanterSettings:     barrelPath = "pages/EditData/index?"
            
        case .subscribedVineyards:  barrelPath = "pages/attentionList/index?type=1&"
        case .collectorCircle:      barrelPath = "pages/attentionList/index?type=2&"
            
        case .wineWallet:          barrelPath = "pages/wallet/index?"
        case .cellarPreferences:    barrelPath = "pages/SetUp/index?"
        case .subscriptionAged:    barrelPath = "pages/Agreement/index?type=1&"
        case .corkSealPrivacy:     barrelPath = "pages/Agreement/index?type=2&"
        case .winemakerChat:       barrelPath = "pages/privateChat/index?userId="
        case .restingPhase:        barrelPath = ""
        case .vinobotAssistant:barrelPath = "pages/CreateRole/index?"
            
        }
        
        return "http://www.cybernexus739.xyz/#" + barrelPath + tastingNotes + "token=" + oakAgedToken + "&appID=98860915"
    }
}



class ServingAssistantCller: UIViewController,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    private  var swapStories:String
    
    private  var showStyle:Bool? = false
    
    init(swapStories: String,ispresntShow:Bool? = false) {
        self.showStyle = ispresntShow
        self.swapStories = swapStories
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    let statrloaidng = JGProgressHUD(style: .dark)
    override func viewDidLoad() {
        super.viewDidLoad()
        
           
        statrloaidng.textLabel.text = "loading..."
        statrloaidng.show(in: self.view)
        
        tanninStructure()
        temperatureImpact()
        carbonicMaceration()
    }
    private lazy var corkClosure: WKWebViewConfiguration = {
        let cork = WKWebViewConfiguration()
        cork.allowsInlineMediaPlayback = true
        cork.preferences.javaScriptCanOpenWindowsAutomatically = true
        return cork
    }()
    func tanninStructure(){
        corkClosure.mediaTypesRequiringUserActionForPlayback = []
        let regionExpert = UIImageView(image: UIImage(named: "terroirExpression"))
        regionExpert.frame = UIScreen.main.bounds
        [
               "dinnerCenterpiece", "brunchDelight", "midnightMusing",
                 "preservationMethods","termGlossary","lawRegulations"
           
        ].forEach { info in
            self.corkClosure.userContentController.add(self, name: info)
        }
        
        regionExpert.contentMode = .scaleAspectFill
        regionExpert.alpha = 1
        self.view.addSubview(regionExpert)
    }
    
    
    lazy var naturalStyle: WKWebView = {
        let rarityHunter = WKWebView(frame: UIScreen.main.bounds, configuration: self.corkClosure)
        
        rarityHunter.uiDelegate = self
     
        
      
        rarityHunter.alpha = 0
       
          
        rarityHunter.scrollView.showsVerticalScrollIndicator = false
        return rarityHunter
    }()
    func temperatureImpact()  {
        self.view.addSubview(self.naturalStyle)
        naturalStyle.navigationDelegate = self
        
        naturalStyle.scrollView.contentInsetAdjustmentBehavior = .never
    }
    
    func carbonicMaceration()  {
        if let url = URL(string:swapStories ) {
            let request = URLRequest(url: url)
           
            naturalStyle.load(request)
            
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        webView.alpha = 1
        self.statrloaidng.dismiss(animated: true)
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        self.view.isUserInteractionEnabled = false
        switch message.name {
        case "dinnerCenterpiece":
            guard let piece = message.body  as? String else {
                return
            }
            statrloaidng.textLabel.text = "Paying..."
            statrloaidng.show(in: self.view)
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                self.statrloaidng.dismiss(animated: true)
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let successHUD = JGProgressHUD(style: .dark)
                               
                    successHUD.indicatorView = JGProgressHUDSuccessIndicatorView()
                    successHUD.textLabel.text = "Pay successful!"
                    successHUD.show(in: self.view)
                    successHUD.dismiss(afterDelay: 2.0)
                    self.naturalStyle.evaluateJavaScript("brunchDelight()", completionHandler: nil)
                }else if case .error(let error) = psResult {
                    if error.code == .paymentCancelled {
                        
                        return
                    }
                    let errorHUD = JGProgressHUD(style: .dark)
                                  
                    errorHUD.indicatorView = JGProgressHUDErrorIndicatorView()
                    errorHUD.textLabel.text = "Sorry"
                    errorHUD.detailTextLabel.text = error.localizedDescription
                    errorHUD.show(in: self.view)
                    errorHUD.dismiss(afterDelay: 3.0)
                   
                }
                
            }
        case "midnightMusing":
            if let musiong =  message.body as? String{
                let pushController = ServingAssistantCller.init(swapStories: musiong)
                
                self.navigationController?.pushViewController(pushController, animated: true)
                
                
            }
        case "termGlossary":
            if showStyle == true {
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
        case "lawRegulations":
            UserDefaults.standard.set(nil, forKey: "vineyardInsights")
            UserDefaults.standard.set(nil, forKey: "winemakingProcess")
            
            UserDefaults.standard.set(nil, forKey: "termGlossary")
            
            
            VineyardSocialControler.switchWithMusicAnimation()
        default: break
        }
    }
}


