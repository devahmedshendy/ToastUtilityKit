//
//  ToastThemeIcon.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public class StandardToastThemeIcon {
    
    public class var info: StandardToastThemeIcon {
        return StandardToastThemeIcon
            .builder
            .setTypeIcon(UIImage(systemName: "info.circle.fill")!)
            .setCloseIcon(UIImage(systemName: "xmark")!)
            .build()
    }
    
    var type: UIImage!
    var close: UIImage!
    
}

extension StandardToastThemeIcon {
    static var builder: StandardToastTypeIconBuildable {
        return StandardToastTypeIconBuilder()
    }
}
