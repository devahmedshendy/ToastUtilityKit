//
//  ToastSkeleton.swift
//  
//
//  Created by Ahmed Shendy on 11/11/21.
//

import Foundation
import UIKit

public protocol ToastSkeleton: AnyObject {
    var containerView: UIView { get set }
    var toastView: UIToastView { get set }
    
    init(containerView: UIView, message: String)
}
