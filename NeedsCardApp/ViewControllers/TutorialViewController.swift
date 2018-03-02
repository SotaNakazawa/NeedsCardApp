//
//  TutorialViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/26.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet var tutorialLabel: UILabel!
    @IBOutlet var pageController: UIPageControl!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    
    var pageNum = 0
    var label1 = "チュートリアル画面1"
    var label2 = "チュートリアル画面2"
    var label3 = "チュートリアル画面3"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageNum = 0
        backButton.isHidden = true
    }

    @IBAction func toNext(_ sender: Any) {
        pageNum += 1
        backButton.isHidden = false
        if(pageNum == 0) {
            tutorialLabel.text = label1
        } else if(pageNum == 1) {
            tutorialLabel.text = label2
        } else if(pageNum == 2) {
            tutorialLabel.text = label3
        } else {
            self.performSegue(withIdentifier: "toViewControllerSegue", sender: nil)
        }
        pageController.currentPage = pageNum
    }
    
    @IBAction func toBack(_ sender: Any) {
        pageNum -= 1
        if(pageNum == 0) {
            tutorialLabel.text = label1
            backButton.isHidden = true
        } else if(pageNum == 1) {
            tutorialLabel.text = label2
        } else if(pageNum == 2) {
            tutorialLabel.text = label3
        } else {
            pageNum = 0
        }
        pageController.currentPage = pageNum
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    



}
