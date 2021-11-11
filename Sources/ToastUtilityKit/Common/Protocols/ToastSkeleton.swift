//
//  Toastable.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public protocol ToastSkeleton: AnyObject {
    var configuration: StandardToastConfiguration { get set }
    var containerView: UIView { get set }
    var toastView: UIToastView { get set }
    
    init(containerView: UIView, message: String)
}
