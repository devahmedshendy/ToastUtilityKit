//
//  Toastable.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public protocol StandardToastable: Toastable, ToastSkeleton {
    var configuration: StandardToastConfiguration { get set }
    
    func setThemeColor(to new: StandardToastThemeColor.Type) -> Toastable
    func setThemeFont(to new: StandardToastThemeFont.Type) -> Toastable
    func setAutoHide(to new: Bool) -> Toastable
    func setDuration(to new: Double) -> Toastable
}

// MARK: - Default Implementation

public extension StandardToastable {
    
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
    
    func show() {
        toastView = StandardToastDefaults.toastView.init()
        toastView.apply(configuration: configuration)
        
        containerView.addSubview(toastView)
        
        // Constraint Configuration
        toastView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            toastView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            toastView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            toastView.topAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.topAnchor)
        ])
    }
    
    func show(completion: @escaping () -> Void) {
        show()
        
        toastView.onHidden = { [weak self] in
            self?.toastView.removeFromSuperview()
            completion()
        }
    }
    
}
