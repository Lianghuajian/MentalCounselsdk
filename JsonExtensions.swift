//
//  JsonExtensions.swift
//  MentalCounselsdk
//
//  Created by lianghuajian on 2020/5/5.
//

import Foundation

public extension NSDictionary {
    func toJsonString() -> String? {
        if !JSONSerialization.isValidJSONObject(self) {
            return nil
        }
        do {
            let data = try JSONSerialization.data(withJSONObject: self, options: .fragmentsAllowed)
            return String(data: data, encoding: String.Encoding.utf8)
        } catch {
            return nil
        }
    }
}

public extension String {
    func jsonStringToObject() -> Any? {
        if let data = self.data(using: .utf8) {
            do {
                let jsonObject = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                return jsonObject
            } catch {
                return nil
            }
        }else {
            return nil
        }
    }
}

public extension Data {
    func objectFromJsonData() -> Any? {
        do {
            return try JSONSerialization.jsonObject(with: self, options: .allowFragments)
        } catch {
            return nil
        }
    }
}
