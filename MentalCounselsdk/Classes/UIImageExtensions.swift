//
//  Bundle+Extensions.swift
//  MentalCounselsdk
//
//  Created by lianghuajian on 2020/4/29.
//

import UIKit

public extension UIImage {
    
    convenience init?(named name: String, bundleName: String) {
        let bundleWithImage = Bundle.init(name: bundleName)
        if #available(iOS 13.0, *) {
            self.init(named: name, in: bundleWithImage, with:nil)
        } else {
            // Fallback on earlier versions
            self.init(named: name, in: bundleWithImage, compatibleWith: UIApplication.shared.keyWindow?.traitCollection)
        }
    }
    
    convenience init?(color: UIColor) {
        self.init(color: color, size: CGSize.init(width: 1.0, height: 1.0))
    }
    
    convenience init?(color: UIColor, size: CGSize) {
        
        guard size.width > 0 && size.height > 0 else {
            self.init()
            return
        }
        
        let rect = CGRect.init(x: 0.0, y: 0.0, width: size.width, height: size.height)
        
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        
        defer {
            UIGraphicsEndImageContext()
        }
        
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        
        guard let cgImage = UIGraphicsGetImageFromCurrentImageContext()?.cgImage else {
            self.init()
            return
        }
        
        self.init(cgImage: cgImage)
    }
    
    func imageWithTintColor(color: UIColor) -> UIImage {
            UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale);
            let rect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
            color.set()
            UIRectFill(rect);
            draw(at: .zero, blendMode: .destinationIn, alpha: 1.0)
            guard let newImage = UIGraphicsGetImageFromCurrentImageContext() else {
                UIGraphicsEndImageContext();
                return self
            };
            UIGraphicsEndImageContext();
            return newImage
    }
}
