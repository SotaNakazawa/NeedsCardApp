//
//  NeedsCard2ViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/15.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class NeedsCard2ViewController: UIViewController {

    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    @IBOutlet var yorokobi: UIButton!
    @IBOutlet var yuumoa: UIButton!
    @IBOutlet var tanosimi: UIButton!
    @IBOutlet var bi: UIButton!
    @IBOutlet var kouryuu: UIButton!
    @IBOutlet var kirakusa: UIButton!
    @IBOutlet var byoudou: UIButton!
    @IBOutlet var tyouwa: UIButton!
    @IBOutlet var seiriseiton: UIButton!
    @IBOutlet var inspiration: UIButton!
    @IBOutlet var titujo: UIButton!
    @IBOutlet var kuuki: UIButton!
    @IBOutlet var tabemono: UIButton!
    @IBOutlet var katudouundou: UIButton!
    @IBOutlet var kyuusokusuimin: UIButton!
    @IBOutlet var seitekihyougen: UIButton!
    @IBOutlet var minoannzenn: UIButton!
    @IBOutlet var sumai: UIButton!
    @IBOutlet var hureai: UIButton!
    @IBOutlet var mizu: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func pickedCard(card:UIButton){
        
        if(appDelegate.needsCardArray.count < 4){
            if((appDelegate.needsCardArray.index(of: (card).currentTitle!) == nil)){
                appDelegate.needsCardArray.append((card).currentTitle!)
                (card).backgroundColor = UIColor(red:0.450, green:0.981, blue:0.474, alpha: 1.0)
            } else {
                (card).backgroundColor = UIColor(red:0.832, green:0.985, blue:0.473, alpha:1.00)
                appDelegate.needsCardArray.remove(at: appDelegate.needsCardArray.index(of: (card).currentTitle!)!)
            }
        }else if(appDelegate.needsCardArray.count == 4){
            if((appDelegate.needsCardArray.index(of: (card).currentTitle!) == nil)){
                appDelegate.needsCardArray.append((card).currentTitle!)
                (card).backgroundColor = UIColor(red:0.450, green:0.981, blue:0.474, alpha: 1.0)
                self.performSegue(withIdentifier: "toCheckedNeedsCardSegue2", sender: nil)
            } else {
                (card).backgroundColor = UIColor(red:0.832, green:0.985, blue:0.473, alpha:1.00)
                appDelegate.needsCardArray.remove(at: appDelegate.needsCardArray.index(of: (card).currentTitle!)!)
            }
        }
    }
    
    
    @IBAction func yorokobi(_ sender: Any) {
        pickedCard(card: yorokobi)
    }
    @IBAction func yuumoa(_ sender: Any) {
        pickedCard(card: yuumoa)
    }
    @IBAction func tanosimi(_ sender: Any) {
        pickedCard(card: tanosimi)
    }
    
    @IBAction func bi(_ sender: Any) {
        pickedCard(card: bi)
    }
    @IBAction func kouryuu(_ sender: Any) {
        pickedCard(card: kouryuu)
    }
    @IBAction func kirakusa(_ sender: Any) {
        pickedCard(card: kirakusa)
    }
    @IBAction func byoudou(_ sender: Any) {
        pickedCard(card: byoudou)
    }
    @IBAction func tyouwa(_ sender: Any) {
        pickedCard(card: tyouwa)
    }
    @IBAction func seiriseiton(_ sender: Any) {
        pickedCard(card: seiriseiton)
    }
    @IBAction func inspiration(_ sender: Any) {
        pickedCard(card: inspiration)
    }
    @IBAction func titujo(_ sender: Any) {
        pickedCard(card: titujo)
    }
    @IBAction func kuuki(_ sender: Any) {
        pickedCard(card: kuuki)
    }
    @IBAction func tabemono(_ sender: Any) {
        pickedCard(card: tabemono)
    }
    @IBAction func katudouundou(_ sender: Any) {
        pickedCard(card: katudouundou)
    }
    @IBAction func kyuusokusuimin(_ sender: Any) {
        pickedCard(card: kyuusokusuimin)
    }
    @IBAction func seitekihyougen(_ sender: Any) {
        pickedCard(card: seitekihyougen)
    }
    @IBAction func minoannzenn(_ sender: Any) {
        pickedCard(card: minoannzenn)
    }
    @IBAction func sumai(_ sender: Any) {
        pickedCard(card: sumai)
    }
    @IBAction func hureai(_ sender: Any) {
        pickedCard(card: hureai)
    }
    @IBAction func mizu(_ sender: Any) {
        pickedCard(card: mizu)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
