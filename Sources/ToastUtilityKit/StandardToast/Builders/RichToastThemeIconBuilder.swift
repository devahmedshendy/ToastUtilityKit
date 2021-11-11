//
//  ToastThemeIconBuilder.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public struct RichToastTypeIconBuilder: RichToastTypeIconBuildable {
    
    public func setTypeIcon(_ icon: UIImage) -> RichToastCloseIconBuildable {
        return RichToastCloseIconBuilder(typeIcon: icon)
    }
    
}

public struct RichToastCloseIconBuilder: RichToastCloseIconBuildable {
    private(set) var typeIcon: UIImage
    
    public func setCloseIcon(_ icon: UIImage) -> RichToastThemeIconBuildable {
        return RichToastThemeIconBuilder(typeIcon: typeIcon, closeIcon: icon)
    }
}

public struct RichToastThemeIconBuilder: RichToastThemeIconBuildable {
    private(set) var typeIcon: UIImage
    private(set) var closeIcon: UIImage
    
    public func build() -> RichToastThemeIcon {
        let themeIcon = RichToastThemeIcon()
        themeIcon.type = typeIcon
        themeIcon.close = closeIcon
        
        return themeIcon
    }
}
