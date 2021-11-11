//
//  File.swift
//  
//
//  Created by Ahmed Shendy on 11/2/21.
//

import Foundation
import UIKit

public protocol Toastable: ToastSkeleton {
    func setThemeColor(to new: StandardToastThemeColor.Type) -> Toastable
    func setThemeFont(to new: StandardToastThemeFont.Type) -> Toastable
    func setAutoHide(to new: Bool) -> Toastable
    func setDuration(to new: Double) -> Toastable
    
    func show()
    func show(completion: @escaping () -> Void)
}
