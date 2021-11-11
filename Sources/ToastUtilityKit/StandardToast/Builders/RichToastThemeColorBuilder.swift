//
//  ToastThemeColorBuilder.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public struct RichToastTitleColorBuilder: RichToastTitleColorBuildable {
    public func setTitle(light: UIColor, dark: UIColor) -> RichToastBodyColorBuildable {
        return RichToastBodyColorBuilder(title: .adapt(light, dark))
    }
}

public struct RichToastBodyColorBuilder: RichToastBodyColorBuildable {
    private(set) var title: UIColor
    
    public func setBody(light: UIColor, dark: UIColor) -> RichToastTypeIconColorBuildable {
        return RichToastTypeIconColorBuilder(title: title, body: .adapt(light, dark))
    }
    
}

public struct RichToastTypeIconColorBuilder: RichToastTypeIconColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    
    public func setTypeIcon(light: UIColor, dark: UIColor) -> RichToastCloseIconColorBuildable {
        return RichToastCloseIconColorBuilder(title: title, body: body, typeIcon: .adapt(light, dark))
    }
}

public struct RichToastCloseIconColorBuilder: RichToastCloseIconColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    
    public func setCloseIcon(light: UIColor, dark: UIColor) -> RichToastBackgroundColorBuildable {
        return RichToastBackgroundColorBuilder(title: title, body: body, typeIcon: typeIcon, closeIcon: .adapt(light, dark))
    }
}

public struct RichToastBackgroundColorBuilder: RichToastBackgroundColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    private(set) var closeIcon: UIColor
    
    public func setBackground(light: UIColor, dark: UIColor) -> RichToastProgressColorBuilable {
        return RichToastProgressColorBuiler(title: title, body: body, typeIcon: typeIcon, closeIcon: closeIcon, background: .adapt(light, dark))
    }
}

public struct RichToastProgressColorBuiler: RichToastProgressColorBuilable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    private(set) var closeIcon: UIColor
    private(set) var background: UIColor
    
    public func setProgress(light: UIColor, dark: UIColor) -> RichToastThemeColorBuildable {
        return RichToastThemeColorBuilder(title: title, body: body, typeIcon: typeIcon, closeIcon: closeIcon, background: background, progress: .adapt(light, dark))
    }
}

public struct RichToastThemeColorBuilder: RichToastThemeColorBuildable {
    private(set) var title: UIColor
    private(set) var body: UIColor
    private(set) var typeIcon: UIColor
    private(set) var closeIcon: UIColor
    private(set) var background: UIColor
    private(set) var progress: UIColor
    
    public func build() -> RichToastThemeColor {
        let themeColor = RichToastThemeColor()
        themeColor.title = title
        themeColor.body = body
        themeColor.typeIcon = typeIcon
        themeColor.closeIcon = closeIcon
        themeColor.background = background
        themeColor.progress = progress
        
        return themeColor
    }
}
