//
//  UIColor+CustomColor.swift
//  SmartFit
//
//  Created by Matheus  Torres on 25/07/24.
//

import UIKit

extension UIColor {
    
    static let customDarkGrey = UIColor(hex: "#333333")
    static let customLightGrey = UIColor(hex: "#808080")
    static let customYellow = UIColor(hex: "#FFB612")
    static let customRed = UIColor(hex: "#dc0a17")
    static let customGreen = UIColor(hex: "#2FC022")
    
    convenience init(hex: String) {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            self.init(white: 0.5, alpha: 1.0)
            return
        }
        
        
        //inicializa o RGB
        var rgbValue: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgbValue)
        
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
