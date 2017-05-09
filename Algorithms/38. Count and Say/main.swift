//
//  main.swift
//  38. Count and Say
//
//  Created by ryan on 09/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

class Solution {
    func countAndSay(_ n: Int) -> String {
        var result: String = "1"
        
        for _ in 0..<n-1 {
            var tempResult: String = ""

            var count = 0
            var say: Character? = nil

            var index = 0
            for c in result.characters {
                if index == 0 {
                    count += 1
                    say = c
                } else if say != c {
                    tempResult.append("\(count)")
                    tempResult.append(say!)
                    count = 1
                    say = c
                }
                else if say == c {
                    count += 1
                }
                
                index += 1
            }
            
            if let s = say {
                tempResult.append("\(count)")
                tempResult.append(s)
            }

            result = tempResult
        }
        
        return result
    }
}


let sol = Solution()
print(sol.countAndSay(1))
print(sol.countAndSay(5))
