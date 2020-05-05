//
//  Bundle+Extensions.swift
//  MentalCounselsdk
//
//  Created by lianghuajian on 2020/4/29.
//

import Foundation

public extension Bundle {
    convenience init?(name: String) {
        Bundle.main.path(forResource: name, ofType: "bundle")
        guard let resourcePath = Bundle.main.resourcePath else {
            self.init()
            return
        }
        var bundleURL: URL = URL(fileURLWithPath: resourcePath + "/" + name)
        if bundleURL.pathExtension.isEmpty {
            bundleURL.appendPathExtension("bundle")
        }
        if !FileManager.default.fileExists(atPath: bundleURL.path)  {
            if var frameworkURL = Bundle.main.privateFrameworksURL {
                //load bundle from framework
                frameworkURL.appendPathComponent("\(name).framework")
                frameworkURL.appendPathComponent("\(name).bundle")
                if !FileManager.default.fileExists(atPath: frameworkURL.path) {
                    self.init()
                    return
                }
                self.init(path: frameworkURL.path)
                return
            }
            assert(false, "Bundle not found in: \(bundleURL.path)")
            self.init()
            return
        }
        self.init(path: bundleURL.path)
    }
}


