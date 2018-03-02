//
//  DescribeViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/18.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class DescribeViewController: UIViewController {
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet var card1: UILabel!
    @IBOutlet var card2: UILabel!
    @IBOutlet var card3: UILabel!
    @IBOutlet var card4: UILabel!
    @IBOutlet var card5: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        card1.text = appDelegate.needsCardArray[0]
        card2.text = appDelegate.needsCardArray[1]
        card3.text = appDelegate.needsCardArray[2]
        card4.text = appDelegate.needsCardArray[3]
        card5.text = appDelegate.needsCardArray[4]

    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
