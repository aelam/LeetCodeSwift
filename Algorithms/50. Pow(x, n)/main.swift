//
//  main.swift
//  50. Pow(x, n)
//
//  Created by ryan on 09/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

// Implement pow(x, n).


// 时间复杂度O(log(n))

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        let nn = abs(n)
        var xx = x
        if n == 0 {
            return 1
        } else if n < 0 {
            xx = 1/x
        }
        
        return nn % 2 == 0 ? myPow(xx * xx, nn / 2) : xx * myPow(xx * xx, nn / 2)
    }
}


let solution = Solution()
print(solution.myPow(2, -5))
