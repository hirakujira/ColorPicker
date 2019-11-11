//
//  AppDelegate.swift
//  ColorPicker
//
//  Created by Hiraku on 2019/11/12.
//  Copyright © 2019 Hiraku. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let colorPanel = NSColorPanel.shared
        colorPanel.showsAlpha = false
        NSApplication.shared.orderFrontColorPanel(colorPanel)
        NotificationCenter.default.addObserver(self, selector: #selector(terminate), name: Notification.Name("TerminateColorPicker"), object: nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @objc func terminate() {
        NSApp.terminate(nil)
    }

}

extension NSColorPanel {
    override open func close() {
        super.close()
        NotificationCenter.default.post(name: Notification.Name("TerminateColorPicker"), object: nil)
    }
}
