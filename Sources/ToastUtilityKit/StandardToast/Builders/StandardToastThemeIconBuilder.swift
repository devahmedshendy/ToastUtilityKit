//
//  ToastThemeIconBuilder.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public struct StandardToastTypeIconBuilder: StandardToastTypeIconBuildable {
    
    public func setTypeIcon(_ icon: UIImage) -> StandardToastCloseIconBuildable {
        return StandardToastCloseIconBuilder(typeIcon: icon)
    }
    
}

public struct StandardToastCloseIconBuilder: StandardToastCloseIconBuildable {
    private(set) var typeIcon: UIImage
    
    public func setCloseIcon(_ icon: UIImage) -> StandardToastThemeIconBuildable {
        return StandardToastThemeIconBuilder(typeIcon: typeIcon, closeIcon: icon)
    }
}

public struct StandardToastThemeIconBuilder: StandardToastThemeIconBuildable {
    private(set) var typeIcon: UIImage
    private(set) var closeIcon: UIImage
    
    public func build() -> StandardToastThemeIcon {
        let themeIcon = StandardToastThemeIcon()
        themeIcon.type = typeIcon
        themeIcon.close = closeIcon
        
        return themeIcon
    }
}
