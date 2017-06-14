//
//  ViewController.swift
//  SimpleEditor
//
//  Copyright © 2017 retlat. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTextViewDelegate {

    var textView: NSTextView?

    override func loadView() {
        // prevent load from NIB file
        self.view = NSView(frame: NSRect(x: 0, y: 0, width: 400, height: 300))
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        textView = NSTextView()
        textView?.delegate = self
        textView?.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(textView!)

        textView?.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        textView?.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        textView?.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        textView?.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func textView(_ textView: NSTextView,
                  completions words: [String],
                  forPartialWordRange charRange: NSRange,
                  indexOfSelectedItem index: UnsafeMutablePointer<Int>?) -> [String] {
        return words
    }

    override func keyUp(with event: NSEvent) {
        super.keyUp(with: event)
        let regex = try? NSRegularExpression(pattern: "[A-z]", options: [])
        let ret = regex?.numberOfMatches(in: event.characters ?? "", options: [], range: NSRange.init(location: 0, length: 1))
        if ret == 1 {
            textView?.complete(nil)
        }
    }

}

