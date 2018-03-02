//
//  ListenerPromiseViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/10.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class ListenerPromiseViewController: UIViewController {

    @IBOutlet var promiseLabel: UILabel!
    @IBOutlet var pageController: UIPageControl!
    @IBOutlet var backButton: UIButton!
    
    var promiseNum = 0
    var promise1 = "相手が話しているときに質問(「それって○○？」)や評価(「最悪だね」)をして、話をさえぎらないようにしましょう"
    var promise2 = "相手の話の展開を予想しない。どんな話も驚かないで聴く。(人は予想外の展開に対して驚いてしまいます)"
    var promise3 = "相手の表情をしっかりと見て、感情を受け止める。"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        promiseNum = 0
        backButton.isHidden = true
    }
    
    @IBAction func toNext(_ sender: Any) {
        promiseNum += 1
        backButton.isHidden = false
        if(promiseNum == 0){
            promiseLabel.text = promise1
        }else if(promiseNum == 1){
            promiseLabel.text = promise2
        }else if(promiseNum == 2){
            promiseLabel.text = promise3
        }else{
            self.performSegue(withIdentifier: "confirmSegue", sender: nil)
        }
        pageController.currentPage = promiseNum
    }
    
    @IBAction func toBack(_ sender: Any) {
        promiseNum -= 1
        if(promiseNum < 0){
            promiseNum = 0
        }else if(promiseNum == 0){
            promiseLabel.text = promise1
            backButton.isHidden = true
        }else if(promiseNum == 1){
            promiseLabel.text = promise2
        }else if(promiseNum == 2){
            promiseLabel.text = promise3
        }
        pageController.currentPage = promiseNum
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
