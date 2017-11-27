//
//  DemoListCell.swift
//  BetterSwift
//
//  Created by Shi Jian on 2017/11/23.
//  Copyright © 2017年 AshenDever. All rights reserved.
//

import UIKit

class DemoListCell: UITableViewCell {

    @IBOutlet weak var mTitle: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    
    var demoModel: DemoModel? {
        didSet {
            initUI()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func initUI() {
        mTitle.text = demoModel?.title
        subTitle.text = demoModel?.subTitle
    }

}
