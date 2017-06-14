//
//  main.swift
//  SimpleEditor
//
//  Copyright © 2017 retlat. All rights reserved.
//

import AppKit

let delegate = AppDelegate()
let menu = Menu()
let app = NSApplication.shared()

app.delegate = delegate
app.menu = menu

let ret = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
