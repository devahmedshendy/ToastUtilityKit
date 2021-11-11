//
//  ToastThemeIconBuildable.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public protocol StandardToastTypeIconBuildable {
    func setTypeIcon(_ icon: UIImage) -> StandardToastCloseIconBuildable
}

public protocol StandardToastCloseIconBuildable {
    func setCloseIcon(_ icon: UIImage) -> StandardToastThemeIconBuildable
}

public protocol StandardToastThemeIconBuildable {
    func build() -> StandardToastThemeIcon
}
