//
//  InfoToast.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

final class InfoToast: RichToast {
    
    //MARK: - Properties
    
    var configuration: RichToastConfiguration
    var containerView: UIView
    var toastView: RichToastView
    
    //MARK: - init Methods
    
    init(containerView: UIView, message: String) {
        let configuration = RichToastConfiguration(
            title: ToastTitleValue.info,
            body: message,
            themeColor: RichToastDefaults.themeColor.info,
            themeFont: RichToastDefaults.themeFont,
            themeIcon: RichToastDefaults.themeIcon.info,
            cornerRadius: RichToastDefaults.cornerRadius,
            progressStyle: RichToastDefaults.progressStyle,
            progressDuration: RichToastDefaults.progressDuration
        )
        
        self.containerView = containerView
        self.configuration = configuration
        self.toastView = RichToastView()
    }
    
    func setThemeColor(to new: RichToastThemeColor.Type) -> ToastShowable {
        configuration = configuration.setThemeColor(to: new.info)
        return self
    }

}
