//
//  DemoStringVC.swift
//  BetterSwift
//
//  Created by Shi Jian on 2017/11/27.
//  Copyright © 2017年 AshenDever. All rights reserved.
//

import UIKit

let str = "1234567890"

class DemoStringVC: UIViewController {

    @IBOutlet weak var leftText: UITextField!
    @IBOutlet weak var rightText: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var content: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func doExcute(_ sender: UIButton) {
        
        let hasLeading = isEmpty(leftText)
        let hasTraining = isEmpty(rightText)
        
        guard hasLeading || hasTraining else { return }
        
        if hasLeading {
            let left = Int(leftText.text!) ?? 0
            if hasTraining {
                let right = Int(rightText.text!) ?? 0
                result.text = str[left..right] ?? "结果为nil"
                content.text = "写法：str[\(left)..\(right)]"
            } else {
                result.text = str[left..] ?? "结果为nil"
                content.text = "写法：str[\(left)..]"
            }
        } else {
            let right = Int(rightText.text!) ?? 0
            result.text = str[..right] ?? "结果为nil"
            content.text = "写法：str[..\(right)]"
        }
    }
    
    func isEmpty(_ view: UITextField) -> Bool {
        return view.text != nil && view.text != ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
    
}
