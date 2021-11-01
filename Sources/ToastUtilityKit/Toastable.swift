//
//  Toastable.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public protocol Toastable: AnyObject {
    
    var configuration: ToastConfiguration { get set }
    var containerView: UIView { get set }
    var toastView: UIToastView { get set }
    
    init(containerView: UIView, message: String)
    
    func show()
    
    func setThemeColor(to new: ToastThemeColor.Type) -> Toastable
    func setThemeFont(to new: ToastThemeFont.Type) -> Toastable
    
}

// MARK: - Default Implementation

public extension Toastable {
    
    func setThemeFont(to new: ToastThemeFont.Type) -> Toastable {
        toastView.apply(configuration: configuration.overrideThemeFont(with: new))
        return self as Toastable
    }
    
    func show() {
        toastView = ToastGlobalSettings.toastView.init()
        toastView.apply(configuration: configuration)
        
        containerView.addSubview(toastView)
        
        toastView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            toastView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            toastView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            toastView.topAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.topAnchor)
        ])
    }
}

