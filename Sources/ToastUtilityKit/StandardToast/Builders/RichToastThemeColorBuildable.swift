//
//  ToastThemeColorBuildable.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public protocol RichToastTitleColorBuildable {
    func setTitle(light: UIColor, dark: UIColor) -> RichToastBodyColorBuildable
}

public protocol RichToastBodyColorBuildable {
    func setBody(light: UIColor, dark: UIColor) -> RichToastTypeIconColorBuildable
}

public protocol RichToastTypeIconColorBuildable {
    func setTypeIcon(light: UIColor, dark: UIColor) -> RichToastCloseIconColorBuildable
}

public protocol RichToastCloseIconColorBuildable {
    func setCloseIcon(light: UIColor, dark: UIColor) -> RichToastBackgroundColorBuildable
}

public protocol RichToastBackgroundColorBuildable {
    func setBackground(light: UIColor, dark: UIColor) -> RichToastProgressColorBuilable
}

public protocol RichToastProgressColorBuilable {
    func setProgress(light: UIColor, dark: UIColor) -> RichToastThemeColorBuildable
}

public protocol RichToastThemeColorBuildable {
    func build() -> RichToastThemeColor
}
