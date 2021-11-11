//
//  RichToastDefaults.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public class RichToastDefaults {
        
    public static var themeColor: RichToastThemeColor.Type = RichToastThemeColor.self
    public static var themeFont: RichToastThemeFont.Type = RichToastThemeFont.self
    public static var themeIcon: RichToastThemeIcon.Type = RichToastThemeIcon.self
    
    public static var cornerRadius: CGFloat = ToastCornerRadiusValue.small
    
    public static var progressStyle: ToastProgressStyle = .none
    public static var progressDuration: TimeInterval = 3
    
}
