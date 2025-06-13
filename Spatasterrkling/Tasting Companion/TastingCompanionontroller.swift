//
//  TastingCompanionontroller.swift
//  Spatasterrkling
//
//  Created by mumu on 2025/6/12.
//

import UIKit

class TastingCompanionontroller: UIViewController {

    
    @IBOutlet weak var glassCollection: UIImageView!
    
    
    @IBOutlet weak var corkMemory: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        moodSelection()
        
      
        corkMemory.text = UserDefaults.standard.object(forKey: "winemakingProcess") as? String
        
        if let szuiyu =  UserDefaults.standard.object(forKey: "vineyardInsights") as? String{
            glassCollection.dessertSweetness(ournal: szuiyu)
        }
        
       
    }
    

    @IBAction func horizontalComparison(_ sender: UIButton) {
    }
    
    
    func moodSelection(){
       
        glassCollection.layer.cornerRadius = 32
        glassCollection.contentMode = .scaleAspectFill
        glassCollection.layer.masksToBounds = true
        
    }

}
