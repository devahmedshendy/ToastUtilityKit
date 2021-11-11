//
//  File.swift
//  
//
//  Created by Ahmed Shendy on 11/2/21.
//

import Foundation
import UIKit

public protocol ToastShowable {
    func show()
    func show(_ completion: @escaping () -> Void)
}
