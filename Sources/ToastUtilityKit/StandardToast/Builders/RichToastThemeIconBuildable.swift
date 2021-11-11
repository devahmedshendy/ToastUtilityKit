//
//  ToastThemeIconBuildable.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public protocol RichToastTypeIconBuildable {
    func setTypeIcon(_ icon: UIImage) -> RichToastCloseIconBuildable
}

public protocol RichToastCloseIconBuildable {
    func setCloseIcon(_ icon: UIImage) -> RichToastThemeIconBuildable
}

public protocol RichToastThemeIconBuildable {
    func build() -> RichToastThemeIcon
}
