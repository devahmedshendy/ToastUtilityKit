//
//  ToastEventBinding.swift
//  
//
//  Created by Ahmed Shendy on 11/11/21.
//

import Foundation

public protocol ToastEventBinding {
    func onHide(completion: @escaping () -> Void)
}
