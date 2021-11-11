//
//  Extension+UITraitCollection.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

extension UITraitCollection {
    var isLightAppearance: Bool {
        return userInterfaceStyle == .light || userInterfaceStyle == .unspecified
    }
}
