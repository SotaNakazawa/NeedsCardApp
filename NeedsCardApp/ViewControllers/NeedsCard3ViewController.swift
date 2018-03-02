//
//  NeedsCard3ViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/15.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class NeedsCard3ViewController: UIViewController {

    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet var zikaku: UIButton!
    @IBOutlet var inotinosyukuhuku: UIButton!
    @IBOutlet var tyousen: UIButton!
    @IBOutlet var meisekisa: UIButton!
    @IBOutlet var atamawoseirisurukoto: UIButton!
    @IBOutlet var nouryoku: UIButton!
    @IBOutlet var isiki: UIButton!
    @IBOutlet var koukennkiyosurukoto: UIButton!
    @IBOutlet var souzousei: UIButton!
    @IBOutlet var hakkenn: UIButton!
    @IBOutlet var tankyuu: UIButton!
    @IBOutlet var yuukousei: UIButton!
    @IBOutlet var kouritusei: UIButton!
    @IBOutlet var seityou: UIButton!
    @IBOutlet var kibou: UIButton!
    @IBOutlet var manabi: UIButton!
    @IBOutlet var sanka: UIButton!
    @IBOutlet var mokuteki: UIButton!
    @IBOutlet var zikohyougen: UIButton!
    @IBOutlet var sigeki: UIButton!
    @IBOutlet var rikai: UIButton!
    @IBOutlet var nagare: UIButton!
    @IBOutlet var tyouetu: UIButton!
    @IBOutlet var sentaku: UIButton!
    @IBOutlet var ziyuu: UIButton!
    @IBOutlet var dokuritu: UIButton!
    @IBOutlet var kuukannyoyuu: UIButton!
    @IBOutlet var zihatusei: UIButton!
    
    
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
                self.performSegue(withIdentifier: "toCheckedNeedsCardSegue3", sender: nil)
            } else {
                (card).backgroundColor = UIColor(red:0.832, green:0.985, blue:0.473, alpha:1.00)
                appDelegate.needsCardArray.remove(at: appDelegate.needsCardArray.index(of: (card).currentTitle!)!)
            }
        }
    }
    
    @IBAction func zikaku(_ sender: Any) {
        pickedCard(card: zikaku)
    }
    @IBAction func inotinosyukuhuku(_ sender: Any) {
        pickedCard(card: inotinosyukuhuku)
    }
    @IBAction func tyousenn(_ sender: Any) {
        pickedCard(card: tyousen)
    }
    @IBAction func meisekisa(_ sender: Any) {
        pickedCard(card: meisekisa)
    }
    @IBAction func atamawoseirisurukoto(_ sender: Any) {
        pickedCard(card: atamawoseirisurukoto)
    }
    @IBAction func nouryoku(_ sender: Any) {
        pickedCard(card: nouryoku)
    }
    @IBAction func isiki(_ sender: Any) {
        pickedCard(card: isiki)
    }
    @IBAction func koukennkiyosurukoto(_ sender: Any) {
        pickedCard(card: koukennkiyosurukoto)
    }
    @IBAction func souzousei(_ sender: Any) {
        pickedCard(card: souzousei)
    }
    @IBAction func hakkenn(_ sender: Any) {
        pickedCard(card: hakkenn)
    }
    @IBAction func tankyuu(_ sender: Any) {
        pickedCard(card: tankyuu)
    }
    @IBAction func yuukousei(_ sender: Any) {
        pickedCard(card: yuukousei)
    }
    @IBAction func kouritusei(_ sender: Any) {
        pickedCard(card: kouritusei)
    }
    @IBAction func seityou(_ sender: Any) {
        pickedCard(card: seityou)
    }
    @IBAction func kibou(_ sender: Any) {
        pickedCard(card: kibou)
    }
    @IBAction func manabi(_ sender: Any) {
        pickedCard(card: manabi)
    }
    @IBAction func sanka(_ sender: Any) {
        pickedCard(card: sanka)
    }
    @IBAction func mokuteki(_ sender: Any) {
        pickedCard(card: mokuteki)
    }
    @IBAction func zikohyougen(_ sender: Any) {
        pickedCard(card: zikohyougen)
    }
    @IBAction func sigeki(_ sender: Any) {
        pickedCard(card: sigeki)
    }
    @IBAction func rikai(_ sender: Any) {
        pickedCard(card: rikai)
    }
    @IBAction func nagare(_ sender: Any) {
        pickedCard(card: nagare)
    }
    @IBAction func tyouetu(_ sender: Any) {
        pickedCard(card: tyouetu)
    }
    @IBAction func sentaku(_ sender: Any) {
        pickedCard(card: sentaku)
    }
    @IBAction func ziyuu(_ sender: Any) {
        pickedCard(card: ziyuu)
    }
    @IBAction func dokuritu(_ sender: Any) {
        pickedCard(card: dokuritu)
    }
    @IBAction func kuukannyoyuu(_ sender: Any) {
        pickedCard(card: kuukannyoyuu)
    }
    @IBAction func zihatusei(_ sender: Any) {
        pickedCard(card: zihatusei)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}
