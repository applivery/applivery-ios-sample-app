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
		let applivery = Applivery.shared
		applivery.logLevel = .info
		applivery.start(apiKey: "YOUR_API_KEY", appId: "YOUR_APP_ID", appStoreRelease: false)
		
		// Addvaced Integration
		// If you want to disable feedback, uncomment next line
//		applivery.disableFeedback()
		
		// You can customize Applivery colors changing the following properties
//		applivery.palette = Palette(
//			primaryColor: .orange,
//			secondaryColor: .white,
//			primaryFontColor: .white,
//			secondaryFontColor: .black,
//			screenshotBrushColor: .green
//		)
		
		
		// You can even change or translate the Applivery's literals
//		applivery.textLiterals = TextLiterals(
//			appName: "Applivery",
//			alertButtonCancel: "Cancel",
//			alertButtonRetry: "Retry",
//			alertButtonOK: "OK",
//			errorUnexpected: "Unexpected error",
//			errorInvalidCredentials: "Invalid credentials",
//			errorDownloadURL: "Couldn't start download. Invalid url",
//			otaUpdateMessage: "There is a new version available for download. Do you want to update to the latest version?",
//			alertButtonLater: "Later",
//			alertButtonUpdate: "Update",
//			forceUpdateMessage: "Sorry this App is outdated. Please, update the App to continue using it",
//			buttonForceUpdate: "Update now",
//			feedbackButtonClose: "Close",
//			feedbackButtonAdd: "Add Feedback",
//			feedbackButtonSend: "Send Feedback",
//			feedbackSelectType: "Select type",
//			feedbackTypeBug: "Bug",
//			feedbackTypeFeedback: "Feedback",
//			feedbackMessagePlaceholder: "Add a message",
//			feedbackAttach: "Attach Screenshot"
//		)
		
		return true
	}

}

