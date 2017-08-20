//
//  ViewController.swift
//  AppliveryDemo
//
//  Created by Alejandro Jiménez on 26/1/16.
//  Copyright © 2016 Applivery S.L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var timer: Timer!
	var time = 0.0
	@IBOutlet weak var labelTime: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timerEvent), userInfo: nil, repeats: true)
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
	}
	
	override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
		if motion == .motionShake {
			NotificationCenter.default.post(name: NSNotification.Name.UIApplicationUserDidTakeScreenshot, object: nil)
		}
	}
	
	func timerEvent() {
		self.time += 0.1
		self.labelTime.text = "Time: \(self.time.f1())"
	}
	
}


extension Double {
	func f1() -> String {
		return self.format(".1")
	}
	
	func format(_ format: String) -> String {
		return String(format: "%\(format)f", self)
	}
}

