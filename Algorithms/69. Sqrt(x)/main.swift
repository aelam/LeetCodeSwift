//
//  main.swift
//  69. Sqrt(x)
//
//  Created by ryan on 09/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

class Solution {
    func mySqrt(_ x: Int) -> Int {
        
        var low = 0
        var high = x
        var middle: Int = 0
        while (low < high) {
            middle = (low + high) / 2
            let result = middle * middle
            if result > x {
                high = middle - 1
            } else if result < x {
                low = middle + 1
            } else {
                low = middle
                break
            }
        }
        return low
    }
}


let solution = Solution()

//print(solution.mySqrt(4) == 2)
//print(solution.mySqrt(100) == 10)
print(solution.mySqrt(2) == 1)
