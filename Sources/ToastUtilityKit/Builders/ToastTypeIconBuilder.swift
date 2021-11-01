//
//  ToastThemeIconBuilder.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public struct ToastTypeIconBuilder: ToastTypeIconBuildable {
    
    public func setTypeIcon(_ icon: UIImage) -> ToastCloseIconBuildable {
        return ToastCloseIconBuilder(typeIcon: icon)
    }
    
}

public struct ToastCloseIconBuilder: ToastCloseIconBuildable {
    private(set) var typeIcon: UIImage
    
    public func setCloseIcon(_ icon: UIImage) -> ToastThemeIconBuildable {
        return ToastThemeIconBuilder(typeIcon: typeIcon, closeIcon: icon)
    }
}

public struct ToastThemeIconBuilder: ToastThemeIconBuildable {
    private(set) var typeIcon: UIImage
    private(set) var closeIcon: UIImage
    
    public func build() -> ToastThemeIcon {
        let themeIcon = ToastThemeIcon()
        themeIcon.type = typeIcon
        themeIcon.close = closeIcon
        
        return themeIcon
    }
}
