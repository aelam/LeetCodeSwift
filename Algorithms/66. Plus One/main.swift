//
//  main.swift
//  66. Plus One
//
//  Created by ryan on 02/06/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.

You may assume the integer do not contain any leading zero, except the number 0 itself.

The digits are stored such that the most significant digit is at the head of the list.
*/


class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var newDigits = digits
        var hand = 1
        for i in (0..<newDigits.count).reversed() {
            if hand > 0 {
                let sum = newDigits[i] + hand
                newDigits[i] = sum % 10
                hand = sum / 10
            }
        }
        
        if hand > 0 {
            newDigits.insert(hand, at: 0)
        }
        
        return newDigits
    }
}


let solution = Solution()
print(solution.plusOne([1,9,9,9]))
