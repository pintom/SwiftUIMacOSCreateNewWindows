//
//  ContentView.swift
//  NewWindowSwiftUI
//
//  Created by tom on 01/10/2019.
//  Copyright © 2019 Tomas Tirlikas. All rights reserved.
//

import SwiftUI

import SwiftUI

struct ContentView: View {

    var body: some View {
		return VStack {
			Button(action: {
				self.showDetail(landmark: "This is Window 1")
			}) {
				Text("First Window")
			}
			
			Button(action: {
				self.showDetail(landmark: "This is Window 2")
			}) {
				Text("Second Window")
			}
			
			Button(action: {
				let detailWindowController = DetailWindowController(
					rootView: Text("This is a Third Window")
				)
				detailWindowController.window?.title = "Third Window"
				detailWindowController.window?.makeKeyAndOrderFront(nil)
				
			}) {
				Text("Third Window")
			}
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
	
	func showDetail(landmark: String) {
		DetailWindowManager.shared.showWindow(for: landmark)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
