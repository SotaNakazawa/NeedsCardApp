//
//  NegativeFeelingViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/10.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class NegativeFeelingViewController: UIViewController {
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var buttonsArray = [UIButton]()
    
    @IBOutlet var iraira: UIButton!
    @IBOutlet var huan: UIButton!
    @IBOutlet var otikomi: UIButton!
    @IBOutlet var kanasimi: UIButton!
    @IBOutlet var hazukasisa: UIButton!
    @IBOutlet var koukai: UIButton!
    @IBOutlet var moyamoya: UIButton!
    @IBOutlet var soreigai: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonsArray = [iraira, huan, otikomi, kanasimi, hazukasisa, koukai, moyamoya, soreigai]
    }
    
    func pick(feeling:UIButton) {
        //押されたボタンの文字列を渡して色を変える
        appDelegate.choicedFeel = (feeling).currentTitle
        (feeling).backgroundColor = UIColor(red:0.000, green:0.590, blue:1.000, alpha: 1.0)
        buttonsArray.remove(at: buttonsArray.index(of: (feeling))!)
        //押されたボタン以外の色を戻す
        for i in buttonsArray{
            i.backgroundColor = UIColor(red:0.462, green:0.838, blue:1.000, alpha: 1.0)
        }
        buttonsArray = [iraira, huan, otikomi, kanasimi, hazukasisa, koukai, moyamoya, soreigai]
    }

    @IBAction func iraira(_ sender: Any) {
        pick(feeling: iraira)
    }
    @IBAction func huan(_ sender: Any) {
        pick(feeling: huan)
    }
    @IBAction func otikomi(_ sender: Any) {
        pick(feeling: otikomi)
    }
    @IBAction func kanasimi(_ sender: Any) {
        pick(feeling: kanasimi)
    }
    @IBAction func hazukasisa(_ sender: Any) {
        pick(feeling: hazukasisa)
    }
    @IBAction func koukai(_ sender: Any) {
        pick(feeling: koukai)
    }
    @IBAction func moyamoya(_ sender: Any) {
        pick(feeling: moyamoya)
    }
    @IBAction func soreigai(_ sender: Any) {
        pick(feeling: soreigai)
    }
    @IBAction func next(_ sender: Any) {
        if(appDelegate.choicedFeel != nil) {
            self.performSegue(withIdentifier: "toChangedListenerViewControllerSegue1", sender: nil)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    



}
