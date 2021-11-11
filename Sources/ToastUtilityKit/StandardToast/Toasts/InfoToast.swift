//
//  InfoToast.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public final class InfoToast: Toastable {
    
    //MARK: - Properties
    
    public var configuration: StandardToastConfiguration
    public var containerView: UIView
    public var toastView: UIToastView
    
    //MARK: - init Methods
    
    public init(containerView: UIView, message: String) {
        let configuration = StandardToastConfiguration(
            title: ToastTitleValue.info,
            body: message,
            themeColor: StandardToastDefaults.themeColor.info,
            themeFont: StandardToastDefaults.themeFont,
            themeIcon: StandardToastDefaults.themeIcon.info,
            cornerRadius: StandardToastDefaults.cornerRadius,
            autoHide: StandardToastDefaults.autoHide,
            duration: StandardToastDefaults.duration
        )
        
        self.containerView = containerView
        self.configuration = configuration
        self.toastView = StandardToastDefaults.toastView.init()
    }
    
    public func setThemeColor(to new: StandardToastThemeColor.Type) -> Toastable {
        configuration = configuration.setThemeColor(to: new.info)
        return self
    }

}