//
//  WindowController.swift
//  testSwiftUI
//
//  Created by tom on 01/10/2019.
//  Copyright © 2019 Tomas Tirlikas. All rights reserved.
//

import SwiftUI
import Cocoa

class DetailWindowController<RootView : View>: NSWindowController {
	
	convenience init(rootView: RootView) {
		let hostingController = NSHostingController(rootView:
			rootView
				.frame(minWidth: 300, minHeight: 400)
		)
		let window = NSWindow(contentViewController: hostingController)
		window.setContentSize(NSSize(width: 400, height: 300))
		self.init(window: window)
	}
	
	
}
