//
//  Menu.swift
//  SimpleEditor
//
//  Copyright © 2017 retlat. All rights reserved.
//

import Cocoa

class Menu: NSMenu {
    override init(title: String) {
        super.init(title: title)

        let appName = Bundle.main.infoDictionary?[kCFBundleNameKey as String] as! String

        let editor = NSMenuItem(title: appName, action: nil, keyEquivalent: "")
        addItem(editor)

        let editorSub = NSMenu(title: appName)
        let about = NSMenuItem(title: "About " + appName,
                               action: #selector(NSApplication.orderFrontStandardAboutPanel(_:)),
                               keyEquivalent: "")
        editorSub.addItem(about)
        editorSub.addItem(NSMenuItem.separator())
        let preferences = NSMenuItem(title: "Preferences...",
                                     action: nil,
                                     keyEquivalent: ",")
        editorSub.addItem(preferences)
        editorSub.addItem(NSMenuItem.separator())
        let hide = NSMenuItem(title: "Hide " + appName,
                              action: #selector(NSApplication.hide(_:)),
                              keyEquivalent: "h")
        editorSub.addItem(hide)
        let hideOthers = NSMenuItem(title: "Hide Others",
                                    action: #selector(NSApplication.hideOtherApplications(_:)),
                                    keyEquivalent: "h")
        hideOthers.keyEquivalentModifierMask = .option
        editorSub.addItem(hideOthers)
        let showAll = NSMenuItem(title: "Show All",
                                 action: #selector(NSApplication.unhideAllApplications(_:)),
                                 keyEquivalent: "")
        editorSub.addItem(showAll)
        editorSub.addItem(NSMenuItem.separator())
        let quit = NSMenuItem(title: "Quit " + appName,
                              action: #selector(NSApplication.terminate(_:)),
                              keyEquivalent: "q")
        editorSub.addItem(quit)

        editor.submenu = editorSub
    }

    required init(coder decoder: NSCoder) {
        fatalError()
    }
}
