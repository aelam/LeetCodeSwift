//
//  main.swift
//  WordBreak
//
//  Created by ryan on 09/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//


class Solution {
    func canBreakDown(_ string: String, _ words: Set<String>) -> Bool {
        return canBreakDown(string, index: 0, words)
    }
    
    func canBreakDown(_ string: String, index: Int, _ words: Set<String>) -> Bool {
        if string.characters.count == index {
            return true
        }
        
        let beginIndex = string.index(string.startIndex, offsetBy: index)
        for i in index+1...string.characters.count {
            let endIndex = string.index(string.startIndex, offsetBy: i)
            let range = Range(uncheckedBounds: (lower: beginIndex, upper: endIndex))
            let substring = string[range]
            if words.contains(substring) {
                print("word: " + substring)
                return canBreakDown(string, index: i, words)
            }
        }
        
        return false
    }

    
    func canBreakDown2(_ string: String, _ words: Set<String>) -> Int {
        return canBreakDown2(string, index: 0, words)
    }
    
    func canBreakDown2(_ string: String, index: Int, _ words: Set<String>) -> Int {
        
        
        if string.characters.count == index {
            return 1
        }
        
        var breakDownWordCount = 0

        let beginIndex = string.index(string.startIndex, offsetBy: index)
        for i in index+1...string.characters.count {
            let endIndex = string.index(string.startIndex, offsetBy: i)
            let range = Range(uncheckedBounds: (lower: beginIndex, upper: endIndex))
            let substring = string[range]
            if words.contains(substring) {
                let subCount = canBreakDown2(string, index: i, words)
                if subCount > 0 {
                    breakDownWordCount += subCount
                }
            }
        }
        
        return breakDownWordCount
    }

}

let wordsSet: Set = ["take", "bath", "bat", "than", "hand", "and", "come"]
let testString = "takebathandcome"

let solution = Solution()
//print(solution.canBreakDown(testString, wordsSet))
print(solution.canBreakDown2(testString, wordsSet))
