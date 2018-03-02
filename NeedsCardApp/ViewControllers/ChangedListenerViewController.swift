//
//  ChangedListenerViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/10.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class ChangedListenerViewController: UIViewController {
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet var feelLabel: UILabel!
    @IBOutlet var themeLabel: UILabel!
    @IBOutlet var text1: UILabel!
    @IBOutlet var text2: UILabel!
    @IBOutlet var buttonLabel: UIButton!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(appDelegate.choicedTheme != "free") {
            feelLabel.text = appDelegate.choicedFeel! + " を感じた"
            themeLabel.text = appDelegate.choicedTheme! + " の話"
        } else {
            feelLabel.isHidden = true
            themeLabel.isHidden = true
        }
    }

    
    @IBAction func toNext(_ sender: Any) {
        count += 1
        buttonLabel.setTitle("次へ", for: .normal)
        text1.text = "相手の方が安心して話せるように3つの約束を守りましょう。"
        text2.isHidden = true
        if(count==2){
            self.performSegue(withIdentifier: "toListenerPromiseSegue", sender: nil)
        }
    }
    
    @IBAction func back(_ sender: Any) {
        appDelegate.choicedFeel = nil
        appDelegate.choicedTheme = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

}
