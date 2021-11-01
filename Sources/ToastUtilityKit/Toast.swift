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
    
    public static func makeDefault(containerView: UIView, message: String) -> Toastable {
        return DefaultToast(containerView: containerView, message: message)
    }
    
    public static func makeInfo(containerView: UIView, message: String) -> Toastable {
        return InfoToast(containerView: containerView, message: message)
    }
}

