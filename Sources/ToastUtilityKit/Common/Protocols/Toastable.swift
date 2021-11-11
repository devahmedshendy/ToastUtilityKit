//
//  File.swift
//  
//
//  Created by Ahmed Shendy on 11/2/21.
//

import Foundation
import UIKit

public protocol Toastable: ToastSkeleton, ToastEventBinding {
    func setThemeColor(to new: StandardToastThemeColor.Type) -> Toastable
    func setThemeFont(to new: StandardToastThemeFont.Type) -> Toastable
    func setAutoHide(to new: Bool) -> Toastable
    func setDuration(to new: Double) -> Toastable
    
    func show() -> ToastEventBinding
}

// MARK: - Default Implementation

public extension Toastable {
    
    func setThemeFont(to new: StandardToastThemeFont.Type) -> Toastable {
        configuration = configuration.setThemeFont(to: new)
        return self
    }
    
    func setAutoHide(to new: Bool) -> Toastable {
        configuration = configuration.setAutoHide(to: new)
        return self
    }
    
    func setDuration(to new: Double) -> Toastable {
        configuration = configuration.setDuration(to: new)
        return self
    }
    
    func show() -> ToastEventBinding {
        toastView = StandardToastDefaults.toastView.init()
        toastView.apply(configuration: configuration)
        
        containerView.addSubview(toastView)
        
        toastView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            toastView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            toastView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            toastView.topAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.topAnchor)
        ])
        
        return self
    }
    
    func onHide(completion: @escaping () -> Void) {
        toastView.onFinish = { [weak self] in
            self?.toastView.removeFromSuperview()
            completion()
        }
    }
    
}
