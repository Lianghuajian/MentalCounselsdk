//
//  Bundle+Extensions.swift
//  MentalCounselsdk
//
//  Created by lianghuajian on 2020/4/29.
//

import Foundation

public extension Bundle {
    static func bundle(name: String) -> Bundle? {
        guard let resourcePath = Bundle.main.resourcePath else {
            return nil
        }
        var bundlePath: URL = URL(fileURLWithPath: resourcePath + "/" + name)
        if bundlePath.pathExtension.isEmpty {
            bundlePath.appendPathExtension("bundle")
        }
        if !FileManager.default.fileExists(atPath: bundlePath.path)  {
            assert(false, "Bundle not found in: \(bundlePath.path)")
            return nil
        }
        return Bundle(path: bundlePath.path)
    }
}
