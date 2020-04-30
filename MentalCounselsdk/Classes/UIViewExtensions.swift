//
//  UIViewExtensions.swift
//  MCCounsel
//
//  Created by lianghuajian on 2020/4/30.
//

import UIKit

public extension UIView {
    
    var top: CGFloat {
        get {
            y
        }
    }
    
    var bottom: CGFloat {
        get {
            y + height
        }
    }
    
    var left: CGFloat {
        get {
            x
        }
    }
    
    var right: CGFloat {
        get {
            x + width
        }
    }
    
    var x: CGFloat {
        get {
            frame.origin.x
        }
        set {
            frame.origin.x = newValue
        }
    }
    
    var y: CGFloat {
        get {
            frame.origin.y
        }
        set {
            frame.origin.y = newValue
        }
    }
    
    var width: CGFloat {
        get {
            frame.width
        }
        set {
            frame.size.width = newValue
        }
    }
    
    var height: CGFloat {
        get {
            frame.height
        }
        set {
            frame.size.height = newValue
        }
    }
}
