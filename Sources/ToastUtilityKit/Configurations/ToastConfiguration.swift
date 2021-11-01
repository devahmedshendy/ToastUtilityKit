//
//  ToastConfiguration.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public struct ToastConfiguration {
    
    var title: String
    var body: String
    
    var themeColor: ToastThemeColor
    var themeFont: ToastThemeFont.Type
    var themeIcon: ToastThemeIcon
    
    var cornerRadius: CGFloat
    
}

extension ToastConfiguration {
    mutating func overrideThemeColor(with new: ToastThemeColor) -> ToastConfiguration {
        themeColor = new
        return self
    }
    
    mutating func overrideThemeFont(with new: ToastThemeFont.Type) -> ToastConfiguration {
        themeFont = new
        return self
    }
    
    mutating func overrideThemeIcon(with new: ToastThemeIcon) -> ToastConfiguration {
        themeIcon = new
        return self
    }
}
