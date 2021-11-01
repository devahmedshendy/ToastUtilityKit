//
//  BasicToastThemeColor.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

class BasicToastThemeColor: ToastThemeColor {
    
    /*
     View       : Light           : Dark
     ------------------------------------------------
     Title      : Primary Default   : Primary Default
     Body       : Primary Default   : Primary Default
     TypeIcon   : Primary Color     : Primary Color
     CloseIcon  : Primary Color     : Primary Color
     Background : Secondary Color   : Secondary Default
     Progress   : Primary Color     : Primary Color
     */
    
    override public class var _default: ToastThemeColor {
        return ToastThemeColor.builder
            .setTitle(light: .primaryDefault, dark: .primaryDefault)
            .setBody(light: .primaryDefault, dark: .primaryDefault)
            .setTypeIcon(light: .primaryDefault, dark: .primaryDefault)
            .setCloseIcon(light: .primaryDefault, dark: .primaryDefault)
            .setBackground(light: .secondaryDefault, dark: .secondaryDefault)
            .setProgress(light: .primaryDefault, dark: .primaryDefault)
            .build()
    }
    
    override public class var info: ToastThemeColor {
        return ToastThemeColor.builder
            .setTitle(light: .primaryDefault, dark: .primaryDefault)
            .setBody(light: .primaryDefault, dark: .primaryDefault)
            .setTypeIcon(light: .primaryBlue, dark: .primaryBlue)
            .setCloseIcon(light: .primaryBlue, dark: .primaryBlue)
            .setBackground(light: .secondaryBlue, dark: .secondaryDefault)
            .setProgress(light: .primaryBlue, dark: .primaryBlue)
            .build()
        
    }
    
}

