//
//  Bundle+Extensions.swift
//  MentalCounselsdk
//
//  Created by lianghuajian on 2020/4/29.
//

import UIKit

public extension UIImage {
    
    static func image(named name: String, bundleName: String) -> UIImage? {
        guard let bundleWithImage = Bundle.bundle(name: bundleName) else {
            return nil
        }
        if #available(iOS 13.0, *) {
            return UIImage.init(named: name, in: bundleWithImage, with:nil)
        } else {
            // Fallback on earlier versions
            return UIImage.init(named: name, in: bundleWithImage, compatibleWith: UIApplication.shared.keyWindow?.traitCollection)
        }
    }
    
    static func imageWithColor(color: UIColor) -> UIImage? {
        return imageWithColor(color: color, size: .init(width: 0.0, height: 0.0))
    }
    
    static func imageWithColor(color: UIColor, size: CGSize) -> UIImage? {
        guard size.width > 0 && size.height > 0 else {
            return nil
        }
        let rect = CGRect.init(x: 0.0, y: 0.0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let coloredImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return coloredImage
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
