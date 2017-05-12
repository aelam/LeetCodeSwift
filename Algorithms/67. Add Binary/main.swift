//
//  main.swift
//  67. Add Binary
//
//  Created by ryan on 12/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let pivotA = a.characters.count - 1
        let pivotB = b.characters.count - 1
        
        var result = String()
        var handle: Character = "0"
        for i in 0...max(pivotA,pivotB) {
            var aa: Character? = nil
            if pivotA - i >= 0 {
                aa = a[a.index(a.startIndex, offsetBy: pivotA - i)]
            }
            var bb: Character? = nil
            if pivotB - i >= 0 {
                bb = b[b.index(b.startIndex, offsetBy: pivotB - i)]
            }

            var digit: Character
            (handle, digit) = binaryAdd(aa, bb, handle)
            result.insert(digit, at: result.startIndex)
        }
        
        if handle == "1" {
            result.insert(handle, at: result.startIndex)
        }
        
        return result
    }
    
    func binaryAdd(_ a: Character?, _ b: Character?, _ handle: Character) -> (Character, Character) {
        var count1 = 0
        if a == "1" {
            count1 += 1
        }
        
        if b == "1" {
            count1 += 1
        }
        
        if handle == "1" {
            count1 += 1
        }

        if count1 == 0 {
            return ("0", "0")
        } else if count1 == 1 {
            return ("0", "1")
        } else if count1 == 2 {
            return ("1", "0")
        } else {
            return ("1", "1")
        }
    }
}


let solution = Solution()
print(solution.addBinary("11", "1"))
