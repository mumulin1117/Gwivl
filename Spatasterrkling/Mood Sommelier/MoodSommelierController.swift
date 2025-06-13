//
//  MoodSommelierController.swift
//  Spatasterrkling
//
//  Created by mumu on 2025/6/12.
//

import UIKit
import JGProgressHUD

class MoodSommelierController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        skinContact.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ssscxb = collectionView.dequeueReusableCell(withReuseIdentifier: "MoodsomonCell", for: indexPath) as! MoodsomonCell
        
        ssscxb.blindChallenge(iuuu: skinContact[indexPath.row])
        return ssscxb
    }
    
    var sensoryJourney:Int = 1
    
    @IBOutlet weak var vineyardWanderlust: UICollectionView!
    
      var skinContact:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let jiacoi =  UICollectionViewFlowLayout.init()
        jiacoi.minimumLineSpacing = 0
        jiacoi.minimumInteritemSpacing = 0
        jiacoi.scrollDirection = .horizontal
        jiacoi.itemSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        vineyardWanderlust.collectionViewLayout = jiacoi
        vineyardWanderlust.showsVerticalScrollIndicator = false
        vineyardWanderlust.register(UINib(nibName: "MoodsomonCell", bundle: nil), forCellWithReuseIdentifier: "MoodsomonCell")
        vineyardWanderlust.delegate = self
        vineyardWanderlust.isPagingEnabled = true
        vineyardWanderlust.dataSource = self
        labelInterpretation()
    }
    

   
    @IBAction func ethicsConsideration(_ sender: UIButton) {
    }
    
    
    @IBAction func celebrationPour(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        if sender.isSelected  {
            sensoryJourney = 3
        }else{
            sensoryJourney = 2
        }
        labelInterpretation()
        
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
                fortexture["bottleJournal"] as? String != nil && fortexture["bottleJournal"] as? String != ""
            })
            self.vineyardWanderlust.reloadData()
        }

    }
    
}
