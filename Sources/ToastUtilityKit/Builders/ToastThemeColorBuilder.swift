//
//  ToastThemeColorBuilder.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public struct ToastTitleColorBuilder: ToastTitleColorBuildable {
    public func setTitle(light: UIColor, dark: UIColor) -> ToastBodyColorBuildable {
        return ToastBodyColorBuilder(title: .adapt(light, dark))
    }
}

public struct ToastBodyColorBuilder: ToastBodyColorBuildable {
    private(set) var title: UIColor
    
    public func setBody(light: UIColor, dark: UIColor) -> ToastTypeIconColorBuildable {
        return ToastTypeIconColorBuilder(title: title, body: .adapt(light, dark))
    }
    
}

public struct ToastTypeIconColorBuilder: ToastTypeIconColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    
    public func setTypeIcon(light: UIColor, dark: UIColor) -> ToastCloseIconColorBuildable {
        return ToastCloseIconColorBuilder(title: title, body: body, typeIcon: .adapt(light, dark))
    }
}

public struct ToastCloseIconColorBuilder: ToastCloseIconColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    
    public func setCloseIcon(light: UIColor, dark: UIColor) -> ToastBackgroundColorBuildable {
        return ToastBackgroundColorBuilder(title: title, body: body, typeIcon: typeIcon, closeIcon: .adapt(light, dark))
    }
}

public struct ToastBackgroundColorBuilder: ToastBackgroundColorBuildable {
    
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    private(set) var closeIcon: UIColor
    
    public func setBackground(light: UIColor, dark: UIColor) -> ToastProgressColorBuilable {
        return ToastProgressColorBuiler(title: title, body: body, typeIcon: typeIcon, closeIcon: closeIcon, background: .adapt(light, dark))
    }
}

public struct ToastProgressColorBuiler: ToastProgressColorBuilable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    private(set) var closeIcon: UIColor
    private(set) var background: UIColor
    
    public func setProgress(light: UIColor, dark: UIColor) -> ToastThemeColorBuildable {
        return ToastThemeColorBuilder(title: title, body: body, typeIcon: typeIcon, closeIcon: closeIcon, background: background, progress: .adapt(light, dark))
    }
}

public struct ToastThemeColorBuilder: ToastThemeColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    private(set) var closeIcon: UIColor
    private(set) var background: UIColor
    private(set) var progress: UIColor
    
    public func build() -> ToastThemeColor {
        let themeColor = ToastThemeColor()
        themeColor.title = title
        themeColor.body = body
        themeColor.typeIcon = typeIcon
        themeColor.closeIcon = closeIcon
        themeColor.background = background
        themeColor.progress = progress
        
        return themeColor
    }
}
