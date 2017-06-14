//
//  AppDelegate.swift
//  SimpleEditor
//
//  Copyright © 2017 retlat. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {

    var windowController: NSWindowController?
    var window: NSWindow?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window = NSWindow(contentViewController: ViewController())
        windowController = NSWindowController(window: window)
        windowController?.showWindow(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

