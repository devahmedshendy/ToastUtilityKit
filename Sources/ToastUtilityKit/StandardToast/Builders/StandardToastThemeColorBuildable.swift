//
//  ToastThemeColorBuildable.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public protocol StandardToastTitleColorBuildable {
    func setTitle(light: UIColor, dark: UIColor) -> StandardToastBodyColorBuildable
}

public protocol StandardToastBodyColorBuildable {
    func setBody(light: UIColor, dark: UIColor) -> StandardToastTypeIconColorBuildable
}

public protocol StandardToastTypeIconColorBuildable {
    func setTypeIcon(light: UIColor, dark: UIColor) -> StandardToastCloseIconColorBuildable
}

public protocol StandardToastCloseIconColorBuildable {
    func setCloseIcon(light: UIColor, dark: UIColor) -> StandardToastBackgroundColorBuildable
}

public protocol StandardToastBackgroundColorBuildable {
    func setBackground(light: UIColor, dark: UIColor) -> StandardToastProgressColorBuilable
}

public protocol StandardToastProgressColorBuilable {
    func setProgress(light: UIColor, dark: UIColor) -> StandardToastThemeColorBuildable
}

public protocol StandardToastThemeColorBuildable {
    func build() -> StandardToastThemeColor
}
