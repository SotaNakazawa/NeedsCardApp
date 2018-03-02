//
//  PositiveFeelingViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/10.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class PositiveFeelingViewController: UIViewController {

    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
   
    var buttonsArray = [UIButton]()
    
    @IBOutlet var wakuwaku: UIButton!
    @IBOutlet var uresii: UIButton!
    @IBOutlet var yasasii: UIButton!
    @IBOutlet var odayaka: UIButton!
    @IBOutlet var itoosii: UIButton!
    @IBOutlet var ikiiki: UIButton!
    @IBOutlet var siawase: UIButton!
    @IBOutlet var soreigai: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonsArray = [wakuwaku, uresii, yasasii, odayaka, itoosii, ikiiki, siawase, soreigai]
    }

    func pick(feeling:UIButton) {
        //押されたボタンの文字列を渡して色を変える
        appDelegate.choicedFeel = (feeling).currentTitle
        (feeling).backgroundColor = UIColor(red:1.000, green:0.149, blue:0.000, alpha: 1.0)
        buttonsArray.remove(at: buttonsArray.index(of: (feeling))!)
        //押されたボタン以外の色を戻す
        for i in buttonsArray{
            i.backgroundColor = UIColor(red:1.000, green:0.493, blue:0.474, alpha: 1.0)
        }
        buttonsArray = [wakuwaku, uresii, yasasii, odayaka, itoosii, ikiiki, siawase, soreigai]
    }
    
    @IBAction func wakuwaku(_ sender: Any) {
        pick(feeling: wakuwaku)
    }
    @IBAction func uresii(_ sender: Any) {
        pick(feeling: uresii)
    }
    @IBAction func yasasii(_ sender: Any) {
        pick(feeling: yasasii)
    }
    @IBAction func odayaka(_ sender: Any) {
        pick(feeling: odayaka)
    }
    @IBAction func itoosii(_ sender: Any) {
        pick(feeling: itoosii)
    }
    @IBAction func ikiiki(_ sender: Any) {
        pick(feeling: ikiiki)
    }
    @IBAction func siawase(_ sender: Any) {
        pick(feeling: siawase)
    }
    @IBAction func soreigai(_ sender: Any) {
        pick(feeling: soreigai)
    }
    @IBAction func next(_ sender: Any) {
        if(appDelegate.choicedFeel != nil) {
            self.performSegue(withIdentifier: "toChangedListenerViewControllerSegue2", sender: nil)
        }

    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
