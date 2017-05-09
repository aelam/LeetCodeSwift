//
//  main.swift
//  567. Permutation in String
//
//  Created by ryan on 09/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given two strings s1 and s2, write a function to return true if s2 contains the permutation of s1. In other words, one of the first string's permutations is the substring of the second string.

Example 1:
Input:s1 = "ab" s2 = "eidbaooo"
Output:True
Explanation: s2 contains one permutation of s1 ("ba").
Example 2:
Input:s1= "ab" s2 = "eidboaoo"
Output: False
Note:
The input strings only contain lower case letters.
The length of both given strings is in range [1, 10,000].
*/

class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        
        var mapping = [Int8](repeatElement(0, count: 26))
        let pivot = CChar(97)
        let cs = s1.utf8CString
        let length1 = s1.characters.count
        
        let cs2 = s2.utf8CString
        let length2 = s2.characters.count
        
        if length1 > length2 {
            return false
        }
        
        for i in 0..<length1 {
            mapping[cs[i] - pivot] += 1
            mapping[cs2[i] - pivot] -= 1
        }
        
        
        if isAllZero(mapping) {
            return true
        }
        
        if length2 <= length1 {
            return false
        }
        
        for i in length1..<length2 {
            mapping[cs2[i] - pivot] -= 1
            mapping[cs2[i - length1] - pivot] += 1
            
            if isAllZero(mapping) {
                return true
            }
        }
        
        return false
    }
    
    // Check if is all zeros
    func isAllZero(_ mapping: [Int8]) -> Bool {
        for v in mapping {
            if v != 0 {
                return false
            }
        }
        
        return true
    }
}
