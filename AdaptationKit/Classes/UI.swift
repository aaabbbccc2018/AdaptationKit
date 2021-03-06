//
//  UI.swift
//  AdaptationKit
//
//  Created by CatchZeng on 2019/1/5.
//

import Foundation

extension UILabel {
    @IBInspectable public var adaptFont: Bool {
        get { return self.adaptFont }
        set {
            guard newValue else { return }
            font = UIFont(name: font.fontName, size: AdaptationKit.adaptFont(font.pointSize))
        }
    }
}

extension UITextView {
    @IBInspectable public var adaptFont: Bool {
        get { return self.adaptFont }
        set {
            guard newValue else { return }
            guard let font = font else { return }
            self.font = UIFont(name: font.fontName, size: AdaptationKit.adaptFont(font.pointSize))
        }
    }
}

extension UITextField {
    @IBInspectable public var adaptFont: Bool {
        get { return self.adaptFont }
        set {
            guard newValue else { return }
            guard let font = font else { return }
            self.font = UIFont(name: font.fontName, size: AdaptationKit.adaptFont(font.pointSize))
        }
    }
}

extension NSLayoutConstraint {
    @IBInspectable public var adaptConstant: Bool {
        get { return self.adaptConstant }
        set {
            guard newValue else { return }
            constant = AdaptationKit.adaptInch(constant)
        } 
    }
}
