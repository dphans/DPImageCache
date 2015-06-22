//
//  AppDelegate.swift
//  Demo
//
//  Created by baophan on 6/22/15.
//  Copyright (c) 2015 baophan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UITableViewDataSource, UIApplicationDelegate, UITableViewDelegate {
    
    internal static let CACHE_DIR_NAME = "cache"
    var window: UIWindow?
    var navigation: UINavigationController?
    var viewController: UIViewController?
    var tbView: UITableView?
    
    var images: Array<String> = [
        "http://webdesignledger.com/wp-content/uploads/2013/04/flatdesign04.jpg",
        "http://cdn.onextrapixel.com/wp-content/uploads/2014/11/flat-icons-examples.jpg",
        "http://ncrafts.net/wp-content/uploads/2013/06/flat-v-minimal_03.jpg",
        "http://www.baileystreetdesign.com.au/wp-content/uploads/2014/07/icon.jpg",
        "http://designmodo.com/wp-content/uploads/2013/04/92.jpg",
        "http://gdj.gdj.netdna-cdn.com/wp-content/uploads/2013/07/longshadow-flat-design-3.jpg",
        "http://smallpaper.net/wp-content/uploads/2014/05/Flat.jpg"
    ]
    
    func createCacheDirectory() {
        var fileMan = NSFileManager.defaultManager()
        var cacheDir = (NSSearchPathForDirectoriesInDomains(
            .DocumentDirectory,
            .UserDomainMask, true)[0] as! NSString)
            .stringByAppendingPathComponent(AppDelegate.CACHE_DIR_NAME)
        if !fileMan.fileExistsAtPath(cacheDir) {
            fileMan.createDirectoryAtPath(
                cacheDir,
                withIntermediateDirectories: false,
                attributes: nil,
                error: nil)
        }
    }

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        createCacheDirectory()
        
        navigation = UINavigationController()
        viewController = UIViewController()
        navigation?.pushViewController(viewController!, animated: false)
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        tbView = UITableView(frame: viewController!.view.frame, style: .Plain)
        tbView!.dataSource = self
        tbView!.delegate = self
        viewController?.view.addSubview(tbView!)
        
        customizeViewController()
        
        self.window!.rootViewController = navigation
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
        return true
    }
    
    func customizeViewController() {
        viewController?.title = "Demo DPImageCache"
        tbView!.registerNib(
            UINib(nibName: "CustomTableViewCell", bundle: nil),
            forCellReuseIdentifier: CustomTableViewCell.CELL_ID)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier(CustomTableViewCell.CELL_ID, forIndexPath: indexPath) as! CustomTableViewCell
        cell.setImageWithURL(images[indexPath.row])
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 240
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

