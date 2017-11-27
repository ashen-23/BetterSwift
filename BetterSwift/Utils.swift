//
//  Utils.swift
//  BetterSwift
//
//  Created by Shi Jian on 2017/11/27.
//  Copyright © 2017年 AshenDever. All rights reserved.
//

import UIKit

/// stotyBoard创建控制器
func storyBoard(name: String, identifier: String? = nil) -> UIViewController {
    
    let aSB = UIStoryboard(name: name, bundle: Bundle.main)
    if let aIdfier = identifier {
        
        return aSB.instantiateViewController(withIdentifier: aIdfier)
    }
    return aSB.instantiateInitialViewController()!
}

