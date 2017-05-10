//
//  main.swift
//  17. Letter Combinations of a Phone Number
//
//  Created by ryan on 10/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

class Solution {
    static let mapping: [[String]] =
        [   /*0:*/ ["0"],
            /*1:*/ ["1"],
            /*2:*/ ["a", "b", "c"],
            /*3:*/ ["d", "e", "f"],
            /*4:*/ ["g", "h", "i"],
            /*5:*/ ["j", "k", "l"],
            /*6:*/ ["m", "n", "o"],
            /*7:*/ ["p", "q", "r", "s"],
            /*8:*/ ["t", "u", "v"],
            /*9:*/ ["w", "x", "y", "z"]]
    
    func letterCombinations(_ digits: String) -> [String] {
        
        var results = [String]()
        for i in 0..<digits.characters.count {
            let cc = digits[digits.index(digits.startIndex, offsetBy: i)]
            combinations(&results, Int(String(cc))!)
        }
        
        return results
    }
    
    func combinations(_ results: inout [String], _ digit: Int) {
        let candidates = Solution.mapping[digit]
        
        if results.isEmpty {
            results.append(contentsOf: candidates)
            return
        }
        
        let count = results.count
        for i in 0..<count {
            for cc in candidates {
                var rr = results[i]
                rr.append(cc)
                results.append(rr)
            }
        }
        
        results.removeFirst(count)
    }
    
}

let solution = Solution()
print(solution.letterCombinations("22344"))

