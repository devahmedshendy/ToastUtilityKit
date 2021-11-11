//
//  Toast.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public final class Toast {
    
    //MARK: - Make
    
//    public static func make(containerView: UIView, message: String) -> AndroidLikeToast {
//        return AndroidLikeToast(...)
//    }
    
    public static func makeDefault(containerView: UIView, message: String) -> RichToastConfigurable {
        return DefaultToast(containerView: containerView, message: message)
    }
    
    public static func makeInfo(containerView: UIView, message: String) -> RichToastConfigurable {
        return InfoToast(containerView: containerView, message: message)
    }
}
