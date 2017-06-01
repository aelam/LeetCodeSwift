//
//  main.swift
//  58. Length of Last Word
//
//  Created by ryan on 01/06/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.

If the last word does not exist, return 0.

Note: A word is defined as a character sequence consists of non-space characters only.

For example,
Given s = "Hello World",
return 5.


*/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var length = 0
        let characters = Array<Character>(s.characters)
        
        for i in (0..<characters.count).reversed() {
            let c = characters[i]
            
            if c == " " {
                if length > 0 {
                    return length
                }
            } else {
                length += 1
            }
        }
        return length
    }
}

let ss = "a "
let s = "Hello World"
let solution = Solution.init()
print(solution.lengthOfLastWord(s))
