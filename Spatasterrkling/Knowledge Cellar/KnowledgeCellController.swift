//
//  KnowledgeCellController.swift
//  Spatasterrkling
//
//  Created by mumu on 2025/6/12.
//

import UIKit
import JGProgressHUD

class KnowledgeCellController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        skinContact.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ssscxb = collectionView.dequeueReusableCell(withReuseIdentifier: "KnowledgeCellarCell", for: indexPath) as! KnowledgeCellarCell
        
        ssscxb.blindChallenge(iuuu: skinContact[indexPath.row])
        return ssscxb
    }
    
    var sensoryJourney:Int = 1
    
    @IBOutlet weak var vineyardWanderlust: UICollectionView!
    
      var skinContact:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

      let jiacoi =  SonicFlowLayout.init()
        vineyardWanderlust.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 50, right: 0)
        vineyardWanderlust.collectionViewLayout = jiacoi
        vineyardWanderlust.showsVerticalScrollIndicator = false
        vineyardWanderlust.register(UINib(nibName: "KnowledgeCellarCell", bundle: nil), forCellWithReuseIdentifier: "KnowledgeCellarCell")
        vineyardWanderlust.delegate = self
        vineyardWanderlust.dataSource = self
        labelInterpretation()
    }
    

   
    @IBAction func ethicsConsideration(_ sender: UIButton) {
    }
    
    
    @IBAction func celebrationPour(_ sender: UIButton) {
        quietReflection()
        sender.isSelected = true
        sensoryJourney = sender.tag - 233
        labelInterpretation()
        
    }
    
    func quietReflection() {
        let travelCompanion = view.viewWithTag(234) as? UIButton
        let travelCompanion1 = view.viewWithTag(235) as? UIButton
        
        let travelCompanion2 = view.viewWithTag(236) as? UIButton
        
        travelCompanion?.isSelected = false
        travelCompanion1?.isSelected = false
        travelCompanion2?.isSelected = false
    }
    private func labelInterpretation()  {
        let hud = JGProgressHUD(style: .dark)
           
        hud.textLabel.text = "loading..."
        hud.show(in: self.view)
        
        VineyardSocialControler.sonicHarmonyBridge(waveformComponents: ["noseDetection":"98860915","aftertasteMemory":20,"flavorDiscovery":1,"sensoryJourney":sensoryJourney], resonanceFrequency: "/vfigbgfrrz/nsoaxeubontpmk") { [weak self] storageTips in
            hud.dismiss()
            
            guard let self = self,
                   let soilImpact = storageTips as? Dictionary<String,Any> ,
                  
                    let preservationMethods = soilImpact["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
           
            self.skinContact = preservationMethods.filter({ fortexture in
                fortexture["bottleJournal"] as? String == nil || fortexture["bottleJournal"] as? String == ""
            })
            self.vineyardWanderlust.reloadData()
        }

    }
    
}
