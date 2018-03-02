//
//  ConceptChoiceViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/10.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class ConceptChoiceViewController: UIViewController {
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    var concept = 0
    
    @IBOutlet var positiveButton: UIButton!
    @IBOutlet var negativeButton: UIButton!
    @IBOutlet var freeButton: UIButton!
    @IBOutlet var progressBar: UIView!
    
    var buttons: [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        concept = 0
        buttons = [positiveButton, negativeButton, freeButton]
    }

    func choicedConcept(theme:UIButton){
        //ボタンの名前を変数に渡す
        appDelegate.choicedTheme = (theme).currentTitle
        
        //押されたボタンのアルファ値を1.0,それ以外を0.5
        theme.alpha = 1.0
        buttons.remove(at: buttons.index(of: (theme))!)
        for button in buttons{
            button.alpha = 0.5
        }
        //buttonsの要素をリセット
        buttons = [positiveButton, negativeButton, freeButton]
    }
    
    
    @IBAction func positiveConcept(_ sender: Any) {
        concept = 1
        choicedConcept(theme: positiveButton)
        
    }
    
    @IBAction func negativeConcept(_ sender: Any) {
        concept = -1
        choicedConcept(theme: negativeButton)
    }
    
    @IBAction func freeConcept(_ sender: Any) {
        concept = 10
        choicedConcept(theme: freeButton)
        appDelegate.choicedTheme = "free"
        appDelegate.choicedFeel = "free"
    }
    
    
    @IBAction func toFeeling(_ sender: Any) {
        if (concept == 1){
            self.performSegue(withIdentifier: "positiveSegue", sender: nil)
        } else if(concept == -1){
            self.performSegue(withIdentifier: "negativeSegue", sender: nil)
        } else if (concept == 10){
            self.performSegue(withIdentifier: "freeSegue", sender: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
