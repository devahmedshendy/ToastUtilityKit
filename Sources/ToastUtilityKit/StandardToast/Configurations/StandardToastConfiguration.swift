//
//  File.swift
//  
//
//  Created by Ahmed Shendy on 11/2/21.
//

import Foundation
import UIKit

public struct StandardToastConfiguration {
    
    var title: String
    var body: String
    
    var themeColor: StandardToastThemeColor
    var themeFont: StandardToastThemeFont.Type
    var themeIcon: StandardToastThemeIcon
    
    var cornerRadius: CGFloat
    
    var autoHide: Bool
    var duration: Double
    
}

extension StandardToastConfiguration {
    mutating func setThemeColor(to new: StandardToastThemeColor) -> StandardToastConfiguration {
        themeColor = new
        return self
    }
    
    mutating func setThemeFont(to new: StandardToastThemeFont.Type) -> StandardToastConfiguration {
        themeFont = new
        return self
    }
    
    mutating func setAutoHide(to new: Bool) -> StandardToastConfiguration {
        autoHide = new
        return self
    }
    
    mutating func setDuration(to new: Double) -> StandardToastConfiguration {
        duration = new
        return self
    }
}
