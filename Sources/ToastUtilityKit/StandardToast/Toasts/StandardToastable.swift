//
//  Toastable.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public protocol StandardToastSettable: Toastable {

    func setThemeColor(to new: StandardToastThemeColor.Type) -> StandardToastSettable
    func setThemeFont(to new: StandardToastThemeFont.Type) -> StandardToastSettable
    func setAutoHide(to new: Bool) -> StandardToastSettable
    func setDuration(to new: Double) -> StandardToastSettable
    
}

// MARK: - Default Implementation

public extension StandardToastSettable {
    
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

    func setThemeFont(to new: StandardToastThemeFont.Type) -> StandardToastSettable {
        configuration = configuration.setThemeFont(to: new)
        return self
    }
    
    func setAutoHide(to new: Bool) -> StandardToastSettable {
        configuration = configuration.setAutoHide(to: new)
        return self
    }
    
    func setDuration(to new: Double) -> StandardToastSettable {
        configuration = configuration.setDuration(to: new)
        return self
    }

}
