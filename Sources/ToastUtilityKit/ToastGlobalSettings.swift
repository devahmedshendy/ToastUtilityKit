//
//  ToastGlobalSettings.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public class ToastGlobalSettings {
    
    public static var toastView: UIToastView.Type = StandardToastView.self
    
    public static var themeColor: ToastThemeColor.Type = BasicToastThemeColor.self
    public static var themeFont: ToastThemeFont.Type = DefaultToastThemeFont.self
    public static var themeIcon: ToastThemeIcon.Type = SystemToastThemeIcon.self
    
    public static var cornerRadius: CGFloat = ToastCornerRadiusValue.small
    
}
