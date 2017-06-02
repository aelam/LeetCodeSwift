//
//  main.swift
//  344. Reverse String
//
//  Created by ryan on 02/06/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/**
 Write a function that takes a string as input and returns the string reversed.
 
 Example:
 Given s = "hello", return "olleh".
 
 */


class Solution {
    func reverseString(_ s: String) -> String {
        var characters = [Character].init(s.characters)
        let count = characters.count
        for i in 0..<count/2 {
            swap(&characters[i], &characters[count - 1 - i])
        }
        return String(characters)
    }
}

let solution = Solution()
print(solution.reverseString("Hello"))
