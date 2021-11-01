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
    
    public var configuration: ToastConfiguration
    public var containerView: UIView
    public var toastView: UIToastView
    
    //MARK: - init Methods
    
    public init(containerView: UIView, message: String) {
        let configuration = ToastConfiguration(
            title: ToastTitleValue.info,
            body: message,
            themeColor: ToastGlobalSettings.themeColor.info,
            themeFont: ToastGlobalSettings.themeFont,
            themeIcon: ToastGlobalSettings.themeIcon.info,
            cornerRadius: ToastGlobalSettings.cornerRadius
        )
        
        self.containerView = containerView
        self.configuration = configuration
        self.toastView = ToastGlobalSettings.toastView.init()
    }
    
    public func setThemeColor(to new: ToastThemeColor.Type) -> Toastable {
        toastView.apply(configuration: configuration.overrideThemeColor(with: new.info))
        return self
    }
    
}

