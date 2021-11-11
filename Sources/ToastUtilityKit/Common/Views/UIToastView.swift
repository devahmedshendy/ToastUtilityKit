//
//  UIToastView.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public class UIToastView: UIView {
    
    // MARK: - SubViews
    
    public var backgroundView: UIView!
    public var bodyLabel: UILabel!
    
    // MARK: - init
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - API
    
    var onHidden: (() -> Void)?
    
    func apply(configuration: StandardToastConfiguration) {
        // Do nothing
    }
    
}
