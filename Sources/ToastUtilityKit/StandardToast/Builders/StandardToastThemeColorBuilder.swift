//
//  ToastThemeColorBuilder.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public struct StandardToastTitleColorBuilder: StandardToastTitleColorBuildable {
    public func setTitle(light: UIColor, dark: UIColor) -> StandardToastBodyColorBuildable {
        return StandardToastBodyColorBuilder(title: .adapt(light, dark))
    }
}

public struct StandardToastBodyColorBuilder: StandardToastBodyColorBuildable {
    private(set) var title: UIColor
    
    public func setBody(light: UIColor, dark: UIColor) -> StandardToastTypeIconColorBuildable {
        return StandardToastTypeIconColorBuilder(title: title, body: .adapt(light, dark))
    }
    
}

public struct StandardToastTypeIconColorBuilder: StandardToastTypeIconColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    
    public func setTypeIcon(light: UIColor, dark: UIColor) -> StandardToastCloseIconColorBuildable {
        return StandardToastCloseIconColorBuilder(title: title, body: body, typeIcon: .adapt(light, dark))
    }
}

public struct StandardToastCloseIconColorBuilder: StandardToastCloseIconColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    
    public func setCloseIcon(light: UIColor, dark: UIColor) -> StandardToastBackgroundColorBuildable {
        return StandardToastBackgroundColorBuilder(title: title, body: body, typeIcon: typeIcon, closeIcon: .adapt(light, dark))
    }
}

public struct StandardToastBackgroundColorBuilder: StandardToastBackgroundColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    private(set) var closeIcon: UIColor
    
    public func setBackground(light: UIColor, dark: UIColor) -> StandardToastProgressColorBuilable {
        return StandardToastProgressColorBuiler(title: title, body: body, typeIcon: typeIcon, closeIcon: closeIcon, background: .adapt(light, dark))
    }
}

public struct StandardToastProgressColorBuiler: StandardToastProgressColorBuilable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    private(set) var closeIcon: UIColor
    private(set) var background: UIColor
    
    public func setProgress(light: UIColor, dark: UIColor) -> StandardToastThemeColorBuildable {
        return StandardToastThemeColorBuilder(title: title, body: body, typeIcon: typeIcon, closeIcon: closeIcon, background: background, progress: .adapt(light, dark))
    }
}

public struct StandardToastThemeColorBuilder: StandardToastThemeColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    private(set) var closeIcon: UIColor
    private(set) var background: UIColor
    private(set) var progress: UIColor
    
    public func build() -> StandardToastThemeColor {
        let themeColor = StandardToastThemeColor()
        themeColor.title = title
        themeColor.body = body
        themeColor.typeIcon = typeIcon
        themeColor.closeIcon = closeIcon
        themeColor.background = background
        themeColor.progress = progress
        
        return themeColor
    }
}
