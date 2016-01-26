//
//  AppDelegate.swift
//  AppliveryDemo
//
//  Created by Alejandro Jiménez on 26/1/16.
//  Copyright © 2016 Applivery S.L. All rights reserved.
//

import UIKit
import Applivery


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		let applivery = Applivery.sharedInstance
		applivery.logLevel = .Info
		applivery.start(apiKey: "YOUR_API_KEY", appId: "YOUR_APP_ID", appStoreRelease: false)
		
		return true
	}

}

