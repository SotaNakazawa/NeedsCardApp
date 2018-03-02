//
//  NeedsCardViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/12.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class NeedsCardViewController: UIViewController {
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet var ukeirerarerukoto: UIButton!
    @IBOutlet var aijou: UIButton!
    @IBOutlet var mitometemoraukoto: UIButton!
    @IBOutlet var communication: UIButton!
    @IBOutlet var kyouryoku: UIButton!
    @IBOutlet var syozokuisiki: UIButton!
    @IBOutlet var community: UIButton!
    @IBOutlet var nakama: UIButton!
    @IBOutlet var kinookenasa: UIButton!
    @IBOutlet var omoiyari: UIButton!
    @IBOutlet var hairyokidukai: UIButton!
    @IBOutlet var ikkansei: UIButton!
    @IBOutlet var nakamaniiretemoraukoto: UIButton!
    @IBOutlet var kyoukan: UIButton!
    @IBOutlet var kyoumeikyousin: UIButton!
    @IBOutlet var sougoizon: UIButton!
    @IBOutlet var ai: UIButton!
    @IBOutlet var sinmitusa: UIButton!
    @IBOutlet var takameaukoto: UIButton!
    @IBOutlet var sonkei: UIButton!
    @IBOutlet var ansin: UIButton!
    @IBOutlet var anzen: UIButton!
    @IBOutlet var antei: UIButton!
    @IBOutlet var sasaesupport: UIButton!
    @IBOutlet var sittemorau: UIButton!
    @IBOutlet var mitemorau: UIButton!
    @IBOutlet var rikaisitemorau: UIButton!
    @IBOutlet var rikaisurukoto: UIButton!
    @IBOutlet var sinrai: UIButton!
    @IBOutlet var atatakasa: UIButton!
    @IBOutlet var usojanaikoto: UIButton!
    @IBOutlet var sinzitumi: UIButton!
    @IBOutlet var seizitusa: UIButton!
    @IBOutlet var sokoniirukotoarukoto: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //カードを選んだときの処理
    func pickedCard(card:UIButton){
        //配列内要素4未満
        if(appDelegate.needsCardArray.count < 4){
            //かぶっていなければ追加，かぶっていれば選択を解除
            if((appDelegate.needsCardArray.index(of: (card).currentTitle!) == nil)){
                appDelegate.needsCardArray.append((card).currentTitle!)
                (card).backgroundColor = UIColor(red:0.450, green:0.981, blue:0.474, alpha: 1.0)
            } else {
                (card).backgroundColor = UIColor(red:0.832, green:0.985, blue:0.473, alpha:1.00)
                appDelegate.needsCardArray.remove(at: appDelegate.needsCardArray.index(of: (card).currentTitle!)!)
            }
        //配列内要素4のときかぶっていなければ遷移
        }else if(appDelegate.needsCardArray.count == 4){
            if((appDelegate.needsCardArray.index(of: (card).currentTitle!) == nil)){
                appDelegate.needsCardArray.append((card).currentTitle!)
                (card).backgroundColor = UIColor(red:0.450, green:0.981, blue:0.474, alpha: 1.0)
                self.performSegue(withIdentifier: "toCheckedNeedsCardSegue1", sender: nil)
            } else {
                (card).backgroundColor = UIColor(red:0.832, green:0.985, blue:0.473, alpha:1.00)
                appDelegate.needsCardArray.remove(at: appDelegate.needsCardArray.index(of: (card).currentTitle!)!)
            }
        }
    }
    
    @IBAction func ukeirerarerukoto(_ sender: Any) {
        pickedCard(card: ukeirerarerukoto)
    }
    @IBAction func aijou(_ sender: Any) {
        pickedCard(card: aijou)
    }
    @IBAction func mitometemoraukoto(_ sender: Any) {
        pickedCard(card: mitometemoraukoto)
    }
    @IBAction func communication(_ sender: Any) {
        pickedCard(card: communication)
    }
    @IBAction func kyouryoku(_ sender: Any) {
        pickedCard(card: kyouryoku)
    }
    @IBAction func syozokuisiki(_ sender: Any) {
        pickedCard(card: syozokuisiki)
    }
    @IBAction func community(_ sender: Any) {
        pickedCard(card: community)
    }
    @IBAction func nakama(_ sender: Any) {
        pickedCard(card: nakama)
    }
    @IBAction func kinookenasa(_ sender: Any) {
        pickedCard(card: kinookenasa)
    }
    @IBAction func omoiyari(_ sender: Any) {
        pickedCard(card: omoiyari)
    }
    @IBAction func hairyokidukai(_ sender: Any) {
        pickedCard(card: hairyokidukai)
    }
    @IBAction func ikkansei(_ sender: Any) {
        pickedCard(card: ikkansei)
    }
    @IBAction func nakamaniiretemoraukoto(_ sender: Any) {
        pickedCard(card: nakamaniiretemoraukoto)
    }
    @IBAction func kyoukan(_ sender: Any) {
        pickedCard(card: kyoukan)
    }
    @IBAction func kyoumeikyousin(_ sender: Any) {
        pickedCard(card: kyoumeikyousin)
    }
    @IBAction func sougoizon(_ sender: Any) {
        pickedCard(card: sougoizon)
    }
    @IBAction func ai(_ sender: Any) {
        pickedCard(card: ai)
    }
    @IBAction func sinmitusa(_ sender: Any) {
        pickedCard(card: sinmitusa)
    }
    @IBAction func takameaukoto(_ sender: Any) {
        pickedCard(card: takameaukoto)
    }
    @IBAction func sonkei(_ sender: Any) {
        pickedCard(card: sonkei)
    }
    @IBAction func ansin(_ sender: Any) {
        pickedCard(card: ansin)
    }
    @IBAction func anzen(_ sender: Any) {
        pickedCard(card: anzen)
    }
    @IBAction func antei(_ sender: Any) {
        pickedCard(card: antei)
    }
    @IBAction func sasaesupport(_ sender: Any) {
        pickedCard(card: sasaesupport)
    }
    @IBAction func sittemorau(_ sender: Any) {
        pickedCard(card: sittemorau)
    }
    @IBAction func mitemorau(_ sender: Any) {
        pickedCard(card: mitemorau)
    }
    @IBAction func rikaisitemorau(_ sender: Any) {
        pickedCard(card: rikaisitemorau)
    }
    @IBAction func rikaisurukoto(_ sender: Any) {
        pickedCard(card: rikaisurukoto)
    }
    @IBAction func sinrai(_ sender: Any) {
        pickedCard(card: sinrai)
    }
    @IBAction func atatakasa(_ sender: Any) {
        pickedCard(card: atatakasa)
    }
    @IBAction func usojanaikoto(_ sender: Any) {
        pickedCard(card: usojanaikoto)
    }
    @IBAction func sinzitumi(_ sender: Any) {
        pickedCard(card: sinzitumi)
    }
    @IBAction func seizitusa(_ sender: Any) {
        pickedCard(card: seizitusa)
    }
    @IBAction func sokoniarukotoirukoto(_ sender: Any) {
        pickedCard(card: sokoniirukotoarukoto)
    }
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
