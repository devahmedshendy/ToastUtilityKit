//
//  RichToast.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

protocol RichToast: AnyObject, RichToastConfigurable {
    var configuration: RichToastConfiguration { get set }
    var containerView: UIView { get set }
    var toastView: RichToastView { get set }
    
    init(containerView: UIView, message: String)
}

// MARK: - Default Implementation

extension RichToast {
    
    func setThemeFont(to new: RichToastThemeFont.Type) -> ToastShowable {
        configuration = configuration.setThemeFont(to: new)
        return self
    }
    
    func enableProgress(style: ToastProgressStyle, duration: TimeInterval = 3) -> ToastShowable {
        configuration.progressStyle = style
        configuration.progressDuration = duration
        return self
    }
    
    // MARK: - ToastShowable Default Implementation
    func show() {
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
    
    func show(_ completion: @escaping () -> Void) {
        show()
        
        toastView.onHidden = { [weak self] in
            self?.toastView.removeFromSuperview()
            completion()
        }
    }
    
}
