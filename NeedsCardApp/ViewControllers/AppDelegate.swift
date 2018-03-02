//
//  AppDelegate.swift
//  NeedsCardApp
//
//  Created by 中沢草太 on 2018/02/10.
//  Copyright © 2018年 Sota Nakazawa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var needsCardArray: [String] = []
    var choicedTheme: String?
    var choicedFeel: String?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //インスタンス化するためにUIStoryboard型の定数を宣言する必要？
        //UIStoryboardのname引数にはMain
        //Xcode6以降は初期のSotryBoardとしてMainというものが生成される
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // UserDefaultsにbool型のKey"launchedBefore"を用意
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        //お手本通りやってもifで飛んでしまうのでfalseをセット
        //falseでもif内が実行される？
        //UserDefaults.standard.set(false, forKey: "launchedBefore")
        //もしLuanchedBeforeがTrueなら何もせず return trueに直行
        if(launchedBefore == true) {
            
            //動作確認のために1回実行ごとに値をfalseに
            UserDefaults.standard.set(false, forKey: "launchedBefore")
            /*
            let startVC = storyboard.instantiateViewController(withIdentifier: "NeedsCardViewController") as! NeedsCardViewController
            self.window = UIWindow(frame: UIScreen.main.bounds)
            self.window?.rootViewController = startVC
            */
            //ここで明示的に遷移先を指定しなくても自動でinitial View Controllerに遷移する
 
        //そうじゃなければlaunchedBeforeにTrueをセット
        //その上でTutorialViewControllerをインスタンス化して.windowメソッドを使って画面に表示する
        } else {
            //1回起動できたけどその後はifの方が実行される，アンインストールしないとuserdefaultsの値はリセットされない？
            UserDefaults.standard.set(true, forKey: "launchedBefore")
            
            
            let tutorialVC = storyboard.instantiateViewController(withIdentifier: "TutorialViewController") as! TutorialViewController
            self.window = UIWindow(frame: UIScreen.main.bounds)
            self.window?.rootViewController = tutorialVC
            
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

