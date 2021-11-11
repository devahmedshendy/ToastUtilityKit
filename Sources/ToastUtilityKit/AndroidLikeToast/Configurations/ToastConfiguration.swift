////
////  ToastConfiguration.swift
////  
////
////  Created by Ahmed Shendy on 11/1/21.
////
//
//import Foundation
//import UIKit
//
//public protocol ToastConfiguration {
//    
//    var title: String { get set }
//    var body: String { get set }
//    
//    var themeColor: StandardToastThemeColor { get set }
//    var themeFont: StandardToastThemeFont.Type { get set }
//    var themeIcon: StandardToastThemeIcon { get set }
//    
//    var cornerRadius: CGFloat { get set }
//    
//}
//
////public struct ToastConfiguration {
////
////    var title: String
////    var body: String
////
////    var themeColor: ToastThemeColor
////    var themeFont: ToastThemeFont.Type
////    var themeIcon: ToastThemeIcon
////
////    var cornerRadius: CGFloat
////
////}
//
//extension ToastConfiguration {
//    func overrideThemeColor(with new: StandardToastThemeColor) -> ToastConfiguration {
//        themeColor = new
//        return self
//    }
//    
//    func overrideThemeFont(with new: StandardToastThemeFont.Type) -> ToastConfiguration {
//        themeFont = new
//        return self
//    }
//    
//    func overrideThemeIcon(with new: StandardToastThemeIcon) -> ToastConfiguration {
//        themeIcon = new
//        return self
//    }
//}
