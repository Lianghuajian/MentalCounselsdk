//
//  Bundle+Extensions.swift
//  MentalCounselsdk
//
//  Created by lianghuajian on 2020/4/29.
//

import Foundation

public extension Bundle {
    convenience init?(name: String) {
        guard let resourcePath = Bundle.main.resourcePath else {
            self.init()
            return
        }
        var bundleURL: URL = URL(fileURLWithPath: resourcePath + "/" + name)
        if bundleURL.pathExtension.isEmpty {
            bundleURL.appendPathExtension("bundle")
        }
        if !FileManager.default.fileExists(atPath: bundleURL.path)  {
            assert(false, "Bundle not found in: \(bundleURL.path)")
            self.init()
            return
        }
        self.init(path: bundleURL.path)
    }
}

