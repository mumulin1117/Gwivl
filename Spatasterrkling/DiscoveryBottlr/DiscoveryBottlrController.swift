//
//  DiscoveryBottlrController.swift
//  Spatasterrkling
//
//  Created by mumu on 2025/6/12.
//

import UIKit
import JGProgressHUD

class DiscoveryBottlrController: UIViewController, DiscobTopiVinoViewDelegate {
    func kineticAlgorithm(cheiu: Dictionary<String, Any>) {
        //香薰列表
    }
    
    
    private  var lowIntervention:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()//人
  
    private  var skinContact:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()//知识库
   

    
    @IBOutlet weak var palateDepth: UICollectionView!
    
    
    @IBOutlet weak var vintageTreasure: UITableView!
    
    @IBOutlet weak var acidityBaLalalance: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        innovationTrends()
        acidityBaLalalance.layer.cornerRadius = 17.5
        acidityBaLalalance.layer.masksToBounds = true
        maiheu.delAbuid = self
        vintageTreasure.dataSource = self
        vintageTreasure.delegate = self
        vintageTreasure.rowHeight = 80
        vintageTreasure.register(UINib.init(nibName: "RegionExpertCell", bundle: nil), forCellReuseIdentifier: "RegionExpertCell")
        bottleJournal()
        labelInterpretation()
    }
    
    func innovationTrends()  {
        let zfried = UICollectionViewFlowLayout()
        zfried.itemSize = CGSize(width: 155, height: 52)
        zfried.minimumLineSpacing = 10
        zfried.minimumInteritemSpacing = 10
        zfried.scrollDirection = .horizontal
        palateDepth.collectionViewLayout = zfried
        palateDepth.showsHorizontalScrollIndicator = false
        palateDepth.register(UINib(nibName: "DiscobuioCell", bundle: nil), forCellWithReuseIdentifier: "DiscobuioCell")
        palateDepth.delegate = self
        palateDepth.dataSource = self
    }
    let maiheu = DiscobTopiVinoView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 320))
}


extension DiscoveryBottlrController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 350
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        return maiheu
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        skinContact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let loawcell = tableView.dequeueReusableCell(withIdentifier: "RegionExpertCell", for: indexPath) as! RegionExpertCell
        loawcell.blindChallenge(iuuu: skinContact[indexPath.row])
        return loawcell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //知识列表 skinContact[indexPath.row]
    }
    
}



extension DiscoveryBottlrController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        lowIntervention.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let loawcell = collectionView.dequeueReusableCell(withReuseIdentifier: "DiscobuioCell", for: indexPath) as! DiscobuioCell
        loawcell.blindChallenge(iuuu: lowIntervention[indexPath.row])
        return loawcell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //lowIntervention[indexPath.row]
    }
    
    
}


extension DiscoveryBottlrController{
    
    private func labelInterpretation()  {//user
        let hud = JGProgressHUD(style: .dark)
           
        hud.textLabel.text = "loading..."
        hud.show(in: self.view)
        
        VineyardSocialControler.sonicHarmonyBridge(waveformComponents: ["wineTasting":"98860915"], resonanceFrequency: "/ghkvinxdxiphuz/wgmtsntyosklo") { [weak self] storageTips in
         
            hud.dismiss(animated: true)
            guard let self = self,
                   let soilImpact = storageTips as? Dictionary<String,Any> ,
                  
                    let preservationMethods = soilImpact["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
            self.lowIntervention = preservationMethods
            self.palateDepth.reloadData()
            
        } dissonanceHandler: {[weak self] innovationTrends in
            hud.dismiss(animated: true)
            
            let errorHUD = JGProgressHUD(style: .dark)
                          
            errorHUD.indicatorView = JGProgressHUDErrorIndicatorView()
            errorHUD.textLabel.text = "Sorry"
            errorHUD.detailTextLabel.text = innovationTrends.localizedDescription
            errorHUD.show(in: UIApplication.shared.keyWindow!)
            errorHUD.dismiss(afterDelay: 3.0)
            
           
        }

    }
    
    
    
    private func bottleJournal()  {
      
        //知识库
        VineyardSocialControler.sonicHarmonyBridge(waveformComponents: ["noseDetection":"98860915","aftertasteMemory":10,"tasteEvolution":1,"flavorDiscovery":4], resonanceFrequency: "/vfigbgfrrz/nsoaxeubontpmk") { [weak self] storageTips in
         
            
            guard let self = self,
                   let soilImpact = storageTips as? Dictionary<String,Any> ,
                  
                    let preservationMethods = soilImpact["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
         
            self.skinContact = preservationMethods
            self.vintageTreasure.reloadData()
            
        }
        
        //查询香薰
        VineyardSocialControler.sonicHarmonyBridge(waveformComponents: ["noseDetection":"98860915","aftertasteMemory":10,"tasteEvolution":1,"flavorDiscovery":5,"blindChallenge":2], resonanceFrequency: "/vfigbgfrrz/nsoaxeubontpmk") { [weak self] storageTips in
         
            
            guard let self = self,
                   let soilImpact = storageTips as? Dictionary<String,Any> ,
                  
                    let preservationMethods = soilImpact["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
           
            self.maiheu.phoenixSync = preservationMethods
            self.maiheu.glideMotion.reloadData()
        }

    }
    
}
