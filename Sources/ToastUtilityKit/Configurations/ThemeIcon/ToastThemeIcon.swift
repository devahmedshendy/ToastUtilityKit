//
//  ToastThemeIcon.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public class ToastThemeIcon {
    
    public class var info: ToastThemeIcon {
        fatalError("Attemp to access properties of ToastThemeIcon class directly, please use the builtin subclasses, or make a new one")
    }
    
    public var type: UIImage!
    public var close: UIImage!
    
}

extension ToastThemeIcon {
    static var builder: ToastTypeIconBuildable {
        return ToastTypeIconBuilder()
    }
}
