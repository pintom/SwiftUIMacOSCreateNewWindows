//
//  WindowManager.swift
//  testSwiftUI
//
//  Created by tom on 01/10/2019.
//  Copyright © 2019 Tomas Tirlikas. All rights reserved.
//

import Cocoa
import SwiftUI

class DetailWindowManager {
	
	static let shared = DetailWindowManager()
	
	private var windowsPerLandmark: [String : NSWindowController] = [:]
	
	func showWindow(for landmark: String) {
		if let existingWindowController = windowController(for: landmark) {
			existingWindowController.window?.makeKeyAndOrderFront(nil)
		} else {
			makeWindowController(for: landmark).window?.makeKeyAndOrderFront(nil)
		}
	}

	func windowController(for landmark: String) -> NSWindowController? {
		return windowsPerLandmark[landmark]
	}
	
	private func makeWindowController(for landmark: String) -> NSWindowController {
		let detailWindowController = DetailWindowController(
			rootView: Text("This is new window: \(landmark)")
		)
		detailWindowController.window?.title = landmark
		windowsPerLandmark[landmark] = detailWindowController
		return detailWindowController
	}
}

