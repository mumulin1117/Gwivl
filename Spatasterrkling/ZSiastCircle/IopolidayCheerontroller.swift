//
//  IopolidayCheerontroller.swift
//  Spatasterrkling
//
//  Created by  on 2025/8/29.
//

import UIKit
import CoreLocation
import JGProgressHUD


class IopolidayCheerontroller: UIViewController ,CLLocationManagerDelegate {
    lazy var sensoryJourney: UIActivityIndicatorView = {
        let noseDetection = UIActivityIndicatorView.init(style: .large)
        noseDetection.hidesWhenStopped = true
        noseDetection.frame.size = CGSize.init(width: 50, height: 50)
        noseDetection.color = .white
        return noseDetection
    }()
    
    private let flavorDiscovery = CLLocationManager()
    private let mouthfeelTexture = CLGeocoder()
    
    
   
    private var tasteEvolution:String = ""
   
    private  var aftertasteMemory:NSNumber = 0.0
    private  var blindChallenge:NSNumber = 0.0
    private func verticalTasting()  {
        let ratingSystem = UIImage(named: "vintageYear")
        
        let qualityIndicator = UIImageView(image:ratingSystem )
        qualityIndicator.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(qualityIndicator)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        verticalTasting()
        
        
        let  flawDetection = UIButton.init()
        flawDetection.setBackgroundImage(UIImage.init(named: "RectangleERT"), for: .normal)
        flawDetection.setTitle("Log in", for: .normal)
        flawDetection.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        flawDetection.setTitleColor(.white, for: .normal)
        view.addSubview(flawDetection)
        flawDetection.addTarget(self, action: #selector(digitalPainting), for: .touchUpInside)
      
        
        flawDetection.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            flawDetection.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            flawDetection.heightAnchor.constraint(equalToConstant: 52),
            flawDetection.widthAnchor.constraint(equalToConstant: 335),
            flawDetection.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
        
        
                
        creativeProcess()
        
        flavorDiscovery.delegate = self
       
        sensoryJourney.center = self.view.center
        self.view.addSubview(sensoryJourney)
        
    }
    
   
   
    
    @objc func digitalPainting() {
                
        creativeProcess()
        
            
        sensoryJourney.startAnimating()
        

        let temperatureImpact = "/opi/v1/savorslowl"
        
        var aerationEffect: [String: Any] = [
           
            "savorslown":SipEtiquette.picnicBliss(),
            "savorslowv":[
               
                "countryCode":tasteEvolution,
                "latitude":aftertasteMemory,
                "longitude":blindChallenge
            ]
            
        ]
        
        if let pairingSynergy = SipEtiquette.friendGathering() {
            aerationEffect["savorslowd"] = pairingSynergy
        }
  
        QwuietReflection.align.wineGenius( temperatureImpact, tasteGuide: aerationEffect) { result in
           
            self.sensoryJourney.stopAnimating()
            switch result{
            case .success(let umamiBridge):
               

                guard let textureContrast = umamiBridge,
                      let oldWorld = textureContrast["token"] as? String,
                      let orangeWine = UserDefaults.standard.object(forKey: "canvas")  as? String
                else {
                    let naturalStyle = JGProgressHUD(style: .dark)
                       
                    naturalStyle.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "dwastaaq vwieraikh!")
                    naturalStyle.show(in: self.view)
                    naturalStyle.dismiss(afterDelay: 2)
                    return
                }
                if let biodynamicWine = textureContrast["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    SipEtiquette.holidayCheer(biodynamicWine)
                   
                }
                
                UserDefaults.standard.set(oldWorld, forKey: "liberationad")
              let organicVineyard =  [
                    "token":oldWorld,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let lowIntervention = QwuietReflection.climateEffect(oakLore: organicVineyard) else {
                    
                    return
                    
                }
                print(lowIntervention)
                // 2. 进行AES加密
                
                guard let amphoraAged = AeanninStructure(),
                      let skinContact = amphoraAged.sedimentNote(bio: lowIntervention) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(skinContact)
                
                
                let carbonicMaceration = orangeWine  + "/?openParams=" + skinContact + "&appId=" + "\(QwuietReflection.align.tameCapsule)"
                print(carbonicMaceration)
                let lateHarvest = DinnerCenterpiectroller.init(flavorDiary: carbonicMaceration, pourS: true)
                BrunchDelight.vineyardInsights?.rootViewController = lateHarvest
               
               
            case .failure(let error):
                let iceWine = JGProgressHUD(style: .dark)
                   
                iceWine.textLabel.text = error.localizedDescription
                iceWine.show(in: self.view)
                iceWine.dismiss(afterDelay: 2)
            }
        }
        
       
        
    }

    
    private func creativeProcess() {
        
        
        if flavorDiscovery.authorizationStatus  ==  .authorizedWhenInUse || flavorDiscovery.authorizationStatus  ==  .authorizedAlways{
            flavorDiscovery.startUpdatingLocation()
          
       }else if flavorDiscovery.authorizationStatus  ==  .denied{
           let fortifiedStyle = JGProgressHUD(style: .dark)
              
           fortifiedStyle.textLabel.text = "Please check your network permisson"
           fortifiedStyle.show(in: self.view)
           fortifiedStyle.dismiss(afterDelay: 2)
       }else if flavorDiscovery.authorizationStatus  ==  .notDetermined{
           flavorDiscovery.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let sparklingMethod = locations.last else {
            return
        }
        
       
        aftertasteMemory =   NSNumber(value: sparklingMethod.coordinate.latitude)
        blindChallenge =   NSNumber(value: sparklingMethod.coordinate.longitude)
       
  

       
        mouthfeelTexture.reverseGeocodeLocation(sparklingMethod) { [self] (petNat, singleVineyard) in
            if singleVineyard != nil {
                
                return
            }
           
            guard let digitalPainting = petNat?.first else { return }
          
            tasteEvolution = digitalPainting.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                creativeProcess()
        
    }
}
