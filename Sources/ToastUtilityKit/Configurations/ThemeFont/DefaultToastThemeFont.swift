//
//  DefaultToastThemeFont.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

class DefaultToastThemeFont: ToastThemeFont {
    
    override public class var title: UIFont {
        return UIFont.systemFont(ofSize: 18.0, weight: .bold)
    }
    
    override public class var body: UIFont {
        return UIFont.systemFont(ofSize: 16.0, weight: .regular)
    }
    
}
