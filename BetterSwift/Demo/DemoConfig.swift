//
//  DemoConfig.swift
//  BetterSwift
//
//  Created by Shi Jian on 2017/11/23.
//  Copyright © 2017年 AshenDever. All rights reserved.
//


let demoList = [["String","快速截取字符串","string"]
]




struct DemoModel {
    var title: String?
    
    var subTitle: String?
    
    var identifier: String?
}


func createDemos() -> [DemoModel] {
    return demoList.map{DemoModel(title: $0[0], subTitle: $0[1], identifier: $0[2])}
}
