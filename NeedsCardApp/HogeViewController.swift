//
//  HogeViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/16.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class HogeViewController: UIViewController {

    @IBOutlet var textLabel: UILabel!
    @IBOutlet var pageState: UIPageControl!
    
    var pageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageNumber = 0
    }

    @IBAction func toNext(_ sender: Any) {
        pageNumber += 1
        if(pageNumber == 1){
            textLabel.text = "2ページ目"
        }else if(pageNumber == 2){
            textLabel.text = "3ページ目"
        }else{
            textLabel.text = "もうないよ"
        }
        pageState.currentPage = pageNumber
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
