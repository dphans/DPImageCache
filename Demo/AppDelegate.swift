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
	
    var window: UIWindow?
    var navigation: UINavigationController?
    var viewController: UIViewController?
    var tbView: UITableView?
    
    var images: Array<String> = [
        "http://www.awwwards.com/awards/images/2013/07/long-shadow-examples-06.jpg",
        "http://www.icanbecreative.com/res/2013/08/flat-design-long-shadow-icon.jpg",
        "http://netdna.webdesignerdepot.com/uploads/2013/07/longshadow.jpg",
        "http://designbump.com/wp-content/uploads/2013/09/long-shadow-flat-icon-019.jpg",
        "http://www.pixelmatortemplates.com/wp-content/uploads/2013/11/long-shadow-ninja.jpg",
        "https://inspirationfeeed.files.wordpress.com/2013/07/vine_long_1x1.png",
        "https://cdn1.colorlib.com/wp/wp-content/uploads/sites/2/2013/11/appcorner-icon.png",
		"http://www.awwwards.com/awards/images/2013/07/long-shadow-examples-06.jpg",
		"http://www.icanbecreative.com/res/2013/08/flat-design-long-shadow-icon.jpg",
		"http://netdna.webdesignerdepot.com/uploads/2013/07/longshadow.jpg",
		"http://designbump.com/wp-content/uploads/2013/09/long-shadow-flat-icon-019.jpg",
		"http://www.pixelmatortemplates.com/wp-content/uploads/2013/11/long-shadow-ninja.jpg",
		"https://inspirationfeeed.files.wordpress.com/2013/07/vine_long_1x1.png",
		"https://cdn1.colorlib.com/wp/wp-content/uploads/sites/2/2013/11/appcorner-icon.png"
    ]

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
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
		
		DPImageCache.cleanCace()
        
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
		
    }

    func applicationDidEnterBackground(application: UIApplication) {
		
    }

    func applicationWillEnterForeground(application: UIApplication) {
		
    }

    func applicationDidBecomeActive(application: UIApplication) {
		
    }

    func applicationWillTerminate(application: UIApplication) {
		
    }

}

