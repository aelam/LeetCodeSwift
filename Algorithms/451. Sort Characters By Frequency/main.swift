//
//  main.swift
//  451. Sort Characters By Frequency
//
//  Created by ryan on 23/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given a string, sort it in decreasing order based on the frequency of characters.

Example 1:

Input:
"tree"

Output:
"eert"

Explanation:
'e' appears twice while 'r' and 't' both appear once.
So 'e' must appear before both 'r' and 't'. Therefore "eetr" is also a valid answer.
Example 2:

Input:
"cccaaa"

Output:
"cccaaa"

Explanation:
Both 'c' and 'a' appear three times, so "aaaccc" is also a valid answer.
Note that "cacaca" is incorrect, as the same characters must be together.
Example 3:

Input:
"Aabb"

Output:
"bbAa"

Explanation:
"bbaA" is also a valid answer, but "Aabb" is incorrect.
Note that 'A' and 'a' are treated as two different characters.
*/


class Solution {
    func frequencySort(_ s: String) -> String {
        let characters = Array(s.characters)
        var frequencies = [Character: Int]()
        var orders = [Character]()
        for c in characters {
            if frequencies[c] != nil {
               frequencies[c] += 1
            } else {
               frequencies[c] = 1
            }
        }
        
        
        
    }
}




