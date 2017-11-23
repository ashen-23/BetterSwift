//
//  BSString.swift
//  BetterSwift
//
//  Created by Shi Jian on 2017/11/23.
//  Copyright © 2017年 AshenDever. All rights reserved.
//

import UIKit

extension String {
    
    func subString(from: Int, to: Int) -> String? {
        
        // 输入有效性判断
        if abs(from) >= self.count || abs(to) >= self.count { return nil }
        
        if from ^ to > 0 { // 同号且不等
            if from > to && to != 0 { return nil }
        } else {
            if from < 0 && to != 0 { return nil }
            if from + abs(to) > self.count { return nil }
        }
        
        let start = from >= 0 ? self.startIndex : self.endIndex
        let end = to >= 0 ? self.startIndex : self.endIndex
        
        let startIdx = self.index(start, offsetBy: from)
        let endIdx = self.index(end, offsetBy: to)
        
        if from == 0 {
            return String(self[...endIdx])
        } else if to == 0 {
            return String(self[startIdx...])
        }
        
        return String(self[startIdx...endIdx])
    }
    
    public subscript (_ input: [Int]) -> String? {
        
        let prefix = input.first ?? 0
        let subfix = input.last ?? 0
        
        return subString(from: prefix, to: subfix)
    }
}

infix operator ...
postfix operator ...
prefix operator ...

public func ...(lhs: Int, rhs: Int) -> [Int] {
    
    return [lhs, rhs]
}

public postfix func ...(lhs: Int) -> [Int] {
    return [lhs, 0]
}

public prefix func ...(rhs: Int) -> [Int] {
    
    return [0, rhs]
}
