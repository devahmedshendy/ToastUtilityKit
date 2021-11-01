//
//  EmojiToastThemeIcon.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit

public class EmojiToastThemeIcon: ToastThemeIcon {
    public override class var info: ToastThemeIcon {
        return ToastThemeIcon
            .builder
            .setTypeIcon(UIImage(named: "info.circle.fill")!)
            .setCloseIcon(UIImage(named: "xmark")!)
            .build()
    }
}
