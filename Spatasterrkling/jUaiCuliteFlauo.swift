//
//  jUaiCuliteFlauo.swift
//  Spatasterrkling
//

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
        
        let oakAgedToken = UserDefaults.standard.object(forKey: "termGlossary") as? String ?? ""
        
        var barrelPath: String = ""
        
        switch destination {
        case .sommelierProfile:      barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "ptaggbensm/bAyIyejxjpsekrtth/xiknbdnexxn?")
        case .cellarInventory:       barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "puangnersf/xrxecpmohsfiltzobrzyz/eiinzdsenxp?")
        case .blendAnalysis:         barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pnawgeetsc/sAbrwogmyaotihkegroaipgyfDoedtfatiillsq/kisngdpeaxi?idayjnuaemoihcvIedc=")
        case .vintageReport:         barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "piakgnebsh/dDjyhntazmpibcmDfeatcakiulusx/zinnydaeuxp?kdeymnaaxmwivcvIbde=")
        case .tastingVideoLog:      barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pmazgjevsd/rVyindzeaoaDdetteawiolfsy/diznqdteuxk?zdeymneammoiacvIqdw=")
        case .corkFaultCode:        barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "ptaxgfeisk/xirshsgucez/aiungddesxf?")
        case .uploadBottleSnap:     barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pxaggnehsd/hpxobsttqViiedpezoasn/pijnhdleaxe?")
        case .connoisseurProfile:   barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pzabgnevsg/ehkogmnetpbalghef/misnhdaepxc?sunscehrbIedx=")
        case .vintnerReport:        barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pmatgmedsp/qrkedpbojrdti/piknvdqelxo?")
        case .qualityMetrics:       barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "puavgpeosx/figndfyobrmmuaytoigovny/miunwddefxd?")
        case .decanterSettings:     barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pkargpefsr/dExddiotxDlamtzaw/ciqnzdievxm?")
            
        case .subscribedVineyards:  barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pkawgreusp/daftwtfednntwiqozndLdiiszto/sijnldzeyxv?etlyqppeh=q1g&")
        case .collectorCircle:      barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "plaogweesu/iartltrewnhtfieoinlLbiksett/piinxdxerxl?vtxydpxek=a2k&")
            
        case .wineWallet:          barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "psaegceess/qwsazlqllegtm/pignaduecxs?")
        case .cellarPreferences:    barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pnaogdexsu/bSpeptoUhpr/zipnwdcenxy?")
        case .subscriptionAged:    barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pwazgfeksu/uAfgwraeueqmyennftm/oignldeetxa?itbynprez=w1d&")
        case .corkSealPrivacy:     barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pharghebsf/wAfgnreezevmteinutx/ciontdkeoxz?gtbyepzer=m2v&")
        case .winemakerChat:       barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "psazgdejss/kperaimvoahtgexCthmantb/hienadoewxm?quyshevryIedr=")
        case .restingPhase:        barrelPath = ""
        case .vinobotAssistant:barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "paaqggemsc/tCfriesabtdebRbovlnet/kienldgedxk?")
            
        }
        
        return UIColor.unravelWineCipher(obfuscatedNotes: "hotttapy:p/n/swvwqws.ucpynbyevrzncezxaucsi7m3d9f.jxxyrzs/p#") + barrelPath + tastingNotes + UIColor.unravelWineCipher(obfuscatedNotes: "tuoskrefnl=") + oakAgedToken + UIColor.unravelWineCipher(obfuscatedNotes: "&marpqpbIaDu=v9c8p8m6j0s9y1g5")
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
        
           
        
        
        tanninStructure()
        temperatureImpact()
        carbonicMaceration()
        
        statrloaidng.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "liofatddiqnrgu.b.j.")
        statrloaidng.show(in: self.view)
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
     
        
      
        rarityHunter.backgroundColor = .clear
        rarityHunter.isHidden = true
        rarityHunter.scrollView.backgroundColor = .clear
        rarityHunter.scrollView.showsVerticalScrollIndicator = false
        return rarityHunter
    }()
    func temperatureImpact()  {
        let paternImage = UIImageView(frame: UIScreen.main.bounds)
        paternImage.contentMode = .scaleAspectFill
        paternImage.image = UIImage(named: "terroirExpression")
        self.view.addSubview(paternImage)
        
        self.view.addSubview(self.naturalStyle)
        naturalStyle.isHidden = true
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
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            self.statrloaidng.dismiss(animated: true)
        }))
        
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        self.view.isUserInteractionEnabled = false
        switch message.name {
        case "dinnerCenterpiece":
            guard let piece = message.body  as? String else {
                return
            }
            statrloaidng.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "Puamysifnbgr.s.e.")
            statrloaidng.show(in: self.view)
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                self.statrloaidng.dismiss(animated: true)
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let successHUD = JGProgressHUD(style: .dark)
                               
                    successHUD.indicatorView = JGProgressHUDSuccessIndicatorView()
                    successHUD.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "Pgaayd tsjuycjcyewsjscfnuxls!")
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


