//
//  Extension+UIColor.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

extension UIColor {
    static let toastRed = UIColor(red: 234/255, green: 67/255, blue: 52/255, alpha: 1.0) // #EA4334
    static let toastLightRed = UIColor(red: 250/255, green: 217/255, blue: 214/255, alpha: 1.0) // #FAD9D6
    
    static let toastGreen = UIColor(red: 55/255, green: 168/255, blue: 84/255, alpha: 1.0) // #37A854
    static let toastLightGreen = UIColor(red: 211/255, green: 240/255, blue: 219/255, alpha: 1.0) // #D3F0DB
    
    static let toastBlue = UIColor(red: 66/255, green: 133/255, blue: 244/255, alpha: 1.0) // #4285F4
    static let toastLightBlue = UIColor(red: 217/255, green: 230/255, blue: 252/255, alpha: 1.0) // #D9E6FC
    
    static let toastYellow = UIColor(red: 251/255, green: 188/255, blue: 47/255, alpha: 1.0) // #FBBC2F
    static let toastLightYellow = UIColor(red: 254/255, green: 241/255, blue: 213/255, alpha: 1.0) // #FEF1D5
    
    static let toastDefault = UIColor(red: 62/255, green: 63/255, blue: 65/255, alpha: 1.0) // #3E3F41
    static let toastLightDefault = UIColor(red: 215/255, green: 216/255, blue: 217/255, alpha: 1.0) // #D7D8D9
}

extension UIColor {
    static func adapt(_ light: UIColor, _ dark: UIColor) -> UIColor {
        return .init { $0.isLightAppearance ? light : dark }
    }
}

