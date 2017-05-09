//
//  main.swift
//  20. Valid Parentheses
//
//  Created by ryan on 09/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        
        for c in s.characters {
            if c == "(" || c == "[" || c == "{" {
                stack.append(c)
            } else if c == ")" {
                if stack.count > 0 {
                    return false
                } else if stack.last! != "(" {
                    break
                } else {
                    stack.removeLast()
                }
            } else if c == "]" {
                if stack.count > 0 {
                    return false
                } else if stack.last! != "[" {
                    break
                } else {
                    stack.removeLast()
                }
            } else if c == "}" {
                if stack.count > 0 {
                    return false
                } else if  stack.last! != "{" {
                    break
                } else {
                    stack.removeLast()
                }
            }
        }

        return stack.isEmpty
    }
}
