//
//  StandardToastDefaults.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public class StandardToastDefaults {
    
    public static var toastView: UIToastView.Type = StandardToastView.self
    
    public static var themeColor: StandardToastThemeColor.Type = StandardToastThemeColor.self
    public static var themeFont: StandardToastThemeFont.Type = StandardToastThemeFont.self
    public static var themeIcon: StandardToastThemeIcon.Type = StandardToastThemeIcon.self
    
    public static var cornerRadius: CGFloat = ToastCornerRadiusValue.small
    
    public static var autoHide: Bool = false
    public static var duration: Double = 3

}
