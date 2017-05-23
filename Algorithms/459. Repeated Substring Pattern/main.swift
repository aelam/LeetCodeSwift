//
//  main.swift
//  459. Repeated Substring Pattern
//
//  Created by ryan on 12/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only and its length will not exceed 10000.

Example 1:
Input: "abab"

Output: True

Explanation: It's the substring "ab" twice.
Example 2:
Input: "aba"

Output: False
Example 3:
Input: "abcabcabcabc"

Output: True

Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)

*/

class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        if s.characters.count <= 1 {
            return false
        }
        let characters = Array(s.characters)
        
        for patternLength in (1...characters.count/2) {
            var mismatched = false
            let pattern = characters[0..<patternLength]
            
            if characters.count%pattern.count != 0 {
                continue
            }
            
            for i in stride(from: patternLength, to: characters.count, by: patternLength) {
                let matchString = characters[i..<i+patternLength]
                if matchString != pattern {
                    mismatched = true
                    break
                }
            }
            
            if mismatched == false {
                return true
            }
        }
        return false
    }
}

let s = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"//"abab"
let solution = Solution()
print(solution.repeatedSubstringPattern(s))


