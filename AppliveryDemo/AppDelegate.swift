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


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		// Basic integration
		let applivery = Applivery.sharedInstance
		applivery.logLevel = .info
		applivery.start(apiKey: "YOUR_API_KEY", appId: "YOUR_APP_ID", appStoreRelease: false)
		
		// Addvaced Integration
		// If you want to disable feedback, uncomment nextline
//		applivery.disableFeedback()
		applivery.screenshotBrushColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
		
		return true
	}

}

