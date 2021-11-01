//
//  ToastThemeColor.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public class ToastThemeColor {
    
    public class var _default: ToastThemeColor {
        fatalError("An attempt to access properties of ToastThemeColor class directly, please use the built-in subclasses, or make a new one")
    }
    
    public class var info: ToastThemeColor {
        fatalError("An attempt to access properties of ToastThemeColor class directly, please use the built-in subclasses, or make a new one")
    }
    
    public var title: UIColor!
    public var body: UIColor!
    public var typeIcon: UIColor!
    public var closeIcon: UIColor!
    public var background: UIColor!
    public var progress: UIColor!
    
}

extension ToastThemeColor {
    static var builder: ToastTitleColorBuilder {
        return ToastTitleColorBuilder()
    }
}
