//
//  RichToastConfigurable.swift
//  
//
//  Created by Ahmed Shendy on 11/11/21.
//

import Foundation

public protocol RichToastConfigurable: ToastShowable {
    func setThemeColor(to new: RichToastThemeColor.Type) -> ToastShowable
    func setThemeFont(to new: RichToastThemeFont.Type) -> ToastShowable
    func enableProgress(style: ToastProgressStyle, duration: TimeInterval) -> ToastShowable
}
