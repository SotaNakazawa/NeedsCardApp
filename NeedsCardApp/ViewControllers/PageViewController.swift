//
//  PageViewController.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/15.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        self.dataSource = self
        appDelegate.needsCardArray = []
    }
    
    func getFirst() -> NeedsCardViewController {
        return storyboard!.instantiateViewController(withIdentifier: "NeedsCardViewController") as! NeedsCardViewController
    }
    
    func getSecond() -> NeedsCard2ViewController {
        return storyboard!.instantiateViewController(withIdentifier:"NeedsCard2ViewController") as! NeedsCard2ViewController
    }

    func getThird() -> NeedsCard3ViewController {
        return storyboard!.instantiateViewController(withIdentifier:"NeedsCard3ViewController") as! NeedsCard3ViewController
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if viewController.isKind(of: NeedsCard3ViewController.self) {
            return getSecond()
        } else if viewController.isKind(of: NeedsCard2ViewController.self){
            return getFirst()
        } else {
            return nil
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController.isKind(of: NeedsCardViewController.self) {
            return getSecond()
        }else if viewController.isKind(of: NeedsCard2ViewController.self) {
            return getThird()
        } else {
            return nil
        }
    }
}
