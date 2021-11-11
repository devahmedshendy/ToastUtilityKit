//
//  ToastThemeColor.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public class StandardToastThemeColor {
    
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
    
    // MARK: - ThemeColor Types
    
    public class var _default: StandardToastThemeColor {
        return StandardToastThemeColor.builder
            .setTitle(light: .primaryDefault, dark: .primaryDefault)
            .setBody(light: .primaryDefault, dark: .primaryDefault)
            .setTypeIcon(light: .primaryDefault, dark: .primaryDefault)
            .setCloseIcon(light: .primaryDefault, dark: .primaryDefault)
            .setBackground(light: .secondaryDefault, dark: .secondaryDefault)
            .setProgress(light: .primaryDefault, dark: .primaryDefault)
            .build()
    }
    
    public class var info: StandardToastThemeColor {
        return StandardToastThemeColor.builder
            .setTitle(light: .primaryDefault, dark: .primaryDefault)
            .setBody(light: .primaryDefault, dark: .primaryDefault)
            .setTypeIcon(light: .primaryBlue, dark: .primaryBlue)
            .setCloseIcon(light: .primaryBlue, dark: .primaryBlue)
            .setBackground(light: .secondaryBlue, dark: .secondaryDefault)
            .setProgress(light: .primaryBlue, dark: .primaryBlue)
            .build()
        
    }
    
    // MARK: - Properties
    
    public var title: UIColor!
    public var body: UIColor!
    public var typeIcon: UIColor!
    public var closeIcon: UIColor!
    public var background: UIColor!
    public var progress: UIColor!
    
}

extension StandardToastThemeColor {
    static var builder: StandardToastTitleColorBuilder {
        return StandardToastTitleColorBuilder()
    }
}
