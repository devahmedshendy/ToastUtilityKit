//
//  File.swift
//  
//
//  Created by Ahmed Shendy on 11/2/21.
//

import Foundation
import UIKit

public protocol Toastable {
    func show()
    func show(completion: @escaping () -> Void)
}
