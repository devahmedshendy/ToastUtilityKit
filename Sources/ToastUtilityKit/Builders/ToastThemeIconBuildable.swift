//
//  ToastThemeIconBuildable.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public protocol ToastTypeIconBuildable {
    func setTypeIcon(_ icon: UIImage) -> ToastCloseIconBuildable
}

public protocol ToastCloseIconBuildable {
    func setCloseIcon(_ icon: UIImage) -> ToastThemeIconBuildable
}

public protocol ToastThemeIconBuildable {
    func build() -> ToastThemeIcon
}
