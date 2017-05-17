//
//  main.swift
//  345. Reverse Vowels of a String
//
//  Created by ryan on 17/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Write a function that takes a string as input and reverse only the vowels of a string.

Example 1:
Given s = "hello", return "holle".

Example 2:
Given s = "leetcode", return "leotcede".

Note:
The vowels does not include the letter "y".
*/

class Solution {
    
    static let vowels: Set<Character> = ["a","e","i","o","u","A","E","I","O","U"]
    static func isVowel(c: Character) -> Bool {
        return vowels.contains(c)
    }

    func reverseVowels(_ s: String) -> String {
        if s.characters.count <= 1 {
            return s
        }
        
        var characters = [Character](s.characters)
        
        var low = 0
        var high = characters.count - 1
        
        while (low < high) {
            while !Solution.isVowel(c: characters[low]) && low < high {
                low += 1
            }
            
            while !Solution.isVowel(c: characters[high]) && low < high {
                high -= 1
            }
            
            if low < high {
                swap(&characters[low], &characters[high])
                low += 1
                high -= 1
            }
        }
        
        return String(characters)
    }
}


let solution = Solution()
//print(solution.reverseVowels("A man\na plan\na cameo\nZena\nBird\nMochaArgo"))
print(solution.reverseVowels("hello"))
