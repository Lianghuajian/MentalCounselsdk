//
//  NSObjectExtension.swift
//  MCCounsel
//
//  Created by lianghuajian on 2020/4/30.
//

import Foundation

public extension NSObject {
    
    var moduleName: String {
        guard let moduleName = NSStringFromClass(type(of: self)).split(separator: ".").first else {
            assert(false,"No module name find in \(self)")
        }
        return String(moduleName)
    }
    
}
