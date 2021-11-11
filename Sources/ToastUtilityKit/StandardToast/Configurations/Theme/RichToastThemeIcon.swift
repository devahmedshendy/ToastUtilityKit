//
//  ToastThemeIcon.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public class RichToastThemeIcon {
    
    public class var info: RichToastThemeIcon {
        return RichToastThemeIcon
            .builder
            .setTypeIcon(UIImage(systemName: "info.circle.fill")!)
            .setCloseIcon(UIImage(systemName: "xmark")!)
            .build()
    }
    
    var type: UIImage!
    var close: UIImage!
    
}

extension RichToastThemeIcon {
    static var builder: RichToastTypeIconBuildable {
        return RichToastTypeIconBuilder()
    }
}
