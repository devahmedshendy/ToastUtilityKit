//
//  BasicToastThemeColor.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

class BasicToastThemeColor: ToastThemeColor {
    
    override public class var _default: ToastThemeColor {
        return ToastThemeColor.builder
            .setTitle(light: .toastDefault, dark: .toastDefault)
            .setBody(light: .toastDefault, dark: .toastDefault)
            .setTypeIcon(light: .toastBlue, dark: .toastBlue)
            .setCloseIcon(light: .toastBlue, dark: .toastBlue)
            .setBackground(light: .toastLightBlue, dark: .toastLightDefault)
            .setProgress(light: .toastBlue, dark: .toastBlue)
            .build()
    }
    
    override public class var info: ToastThemeColor {
        return ToastThemeColor.builder
            .setTitle(light: .toastDefault, dark: .toastDefault)
            .setBody(light: .toastDefault, dark: .toastDefault)
            .setTypeIcon(light: .toastBlue, dark: .toastBlue)
            .setCloseIcon(light: .toastBlue, dark: .toastBlue)
            .setBackground(light: .toastLightBlue, dark: .toastLightDefault)
            .setProgress(light: .toastBlue, dark: .toastBlue)
            .build()
        
    }
    
}

