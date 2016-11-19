//
//  UIViewController+IsModal.swift
//  Sos
//
//  Created by Taqtile on 9/7/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

import UIKit

extension UIViewController {
    func isModal() -> Bool {
        if self.presentingViewController != nil {
            return true
        }
        
        if self.presentingViewController?.presentedViewController == self {
            return true
        }
        
        if self.navigationController != nil && self.navigationController?.presentingViewController?.presentedViewController == self.navigationController {
            return true
        }
        
        if self.tabBarController?.presentingViewController is UITabBarController {
            return true
        }

        return false
    }
}
