//
//  ConfirmViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/12.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {
    var checkedSpeaker:Int?
    var checkedListener:Int?
    
    @IBOutlet var speakerReady: UIButton!
    @IBOutlet var listenerReady: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkedSpeaker = 0
        checkedListener = 0
        
    }

    @IBAction func confirmedSpeaker(_ sender: Any) {
        checkedSpeaker = 1
        speakerReady.setTitle("OK!", for: .normal)
        if(checkedSpeaker==1 && checkedListener==1){
            self.performSegue(withIdentifier: "toTalkingSegue", sender: nil)
        }
    }
    
    @IBAction func confirmedListener(_ sender: Any) {
        checkedListener = 1
        listenerReady.setTitle("OK!", for: .normal)
        if(checkedSpeaker==1 && checkedListener==1){
            self.performSegue(withIdentifier: "toTalkingSegue", sender: nil)
        }
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
