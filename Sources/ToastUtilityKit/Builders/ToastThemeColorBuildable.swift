//
//  ToastThemeColorBuildable.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public protocol ToastTitleColorBuildable {
    func setTitle(light: UIColor, dark: UIColor) -> ToastBodyColorBuildable
}

public protocol ToastBodyColorBuildable {
    func setBody(light: UIColor, dark: UIColor) -> ToastTypeIconColorBuildable
}

public protocol ToastTypeIconColorBuildable {
    func setTypeIcon(light: UIColor, dark: UIColor) -> ToastCloseIconColorBuildable
}

public protocol ToastCloseIconColorBuildable {
    func setCloseIcon(light: UIColor, dark: UIColor) -> ToastBackgroundColorBuildable
}

public protocol ToastBackgroundColorBuildable {
    func setBackground(light: UIColor, dark: UIColor) -> ToastProgressColorBuilable
}

public protocol ToastProgressColorBuilable {
    func setProgress(light: UIColor, dark: UIColor) -> ToastThemeColorBuildable
}

public protocol ToastThemeColorBuildable {
    func build() -> ToastThemeColor
}
