//
//  File.swift
//  
//
//  Created by Ahmed Shendy on 11/2/21.
//

import Foundation
import UIKit

public struct RichToastConfiguration {
    
    var title: String
    var body: String
    
    var themeColor: RichToastThemeColor
    var themeFont: RichToastThemeFont.Type
    var themeIcon: RichToastThemeIcon
    
    var cornerRadius: CGFloat
    
    var progressStyle: ToastProgressStyle
    var progressDuration: TimeInterval
    
}

extension RichToastConfiguration {
    mutating func setThemeColor(to new: RichToastThemeColor) -> RichToastConfiguration {
        themeColor = new
        return self
    }
    
    mutating func setThemeFont(to new: RichToastThemeFont.Type) -> RichToastConfiguration {
        themeFont = new
        return self
    }
    
    mutating func setProgressStyle(to new: ToastProgressStyle) -> RichToastConfiguration {
        progressStyle = new
        return self
    }
    
    mutating func setProgressDuration(to new: TimeInterval) -> RichToastConfiguration {
        progressDuration = new
        return self
    }
}
