//: [Previous](@previous)

/*:
 
 [62. Unique Paths](https://leetcode-cn.com/problems/unique-paths)
 
A robot is located at the top-left corner of a `m x n` grid (marked 'Start' in the diagram below).

The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

How many possible unique paths are there?

 
```
Example 1:


Input: m = 3, n = 7
Output: 28
```
 
```
Example 2:

Input: m = 3, n = 2
Output: 3
 
Explanation:
From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
1. Right -> Down -> Down
2. Down -> Down -> Right
3. Down -> Right -> Down
```
```
Example 3:

Input: m = 7, n = 3
Output: 28
```
```
Example 4:

Input: m = 3, n = 3
Output: 6
```

Constraints:

* `1 <= m, n <= 100`
* It's guaranteed that the answer will be less than or equal to `2 * 109`.
 
*/


class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        let array = [Int].init(repeating: 0, count: m)
        var dp: [[Int]] = [[Int]].init(repeating: array, count: n)
        
        for i in 0..<m {
            dp[0][i] = 1
        }
        
        for i in 0..<n {
            dp[i][0] = 1
        }
        
        for i in 1..<n {
            for j in 1..<m {
                dp[i][j] = dp[i-1][j] + dp[i][j-1]
            }
        }
        
        return dp[n-1][m-1]
    }
}



let s = Solution()
s.uniquePaths(7, 3)
//: [Next](@next)

 
