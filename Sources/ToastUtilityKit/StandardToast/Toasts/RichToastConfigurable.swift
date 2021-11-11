//
//  RichToastConfigurable.swift
//  
//
//  Created by Ahmed Shendy on 11/11/21.
//

import Foundation

public protocol RichToastConfigurable {
    func setThemeColor(to new: RichToastThemeColor.Type) -> Toastable
    func setThemeFont(to new: RichToastThemeFont.Type) -> Toastable
    func enableProgress(style: ToastProgressStyle, duration: TimeInterval) -> Toastable
}
