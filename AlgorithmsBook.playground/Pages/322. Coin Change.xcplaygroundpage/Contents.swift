//: [Previous](@previous)


/*:
[322. Coin Change](https://leetcode-cn.com/problems/coin-change/)
 
 You are given coins of different denominations and a total amount of money amount. Write a function to compute the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return `-1`.

 You may assume that you have an infinite number of each kind of coin.

  
```
 Example 1:

 Input: coins = [1,2,5], amount = 11
 Output: 3
 Explanation: 11 = 5 + 5 + 1
 ```

 ```
 Example 2:

 Input: coins = [2], amount = 3
 Output: -1
 ```

 ```
 Example 3:

 Input: coins = [1], amount = 0
 Output: 0
 ```
 
 ```
 Example 4:

 Input: coins = [1], amount = 1
 Output: 1
 ```
 
 ```
 Example 5:

 Input: coins = [1], amount = 2
 Output: 2
 
 ```

 Constraints:

 * 1 <= coins.length <= 12
 * 1 <= coins[i] <= 231 - 1
 * 0 <= amount <= 104



// f(n) = min(f(n - c1), f(n - c2), ... f(n - cn)) + 1
 */

class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        let maxValue = Int.max - amount
        var dp = [Int].init(repeating: maxValue, count: amount + 1)

        dp[0] = 0
        
        for i in 1..<(amount+1) {
            var cost = dp[i]
            for c in coins {
                if i >= c {
                    cost = min(cost, dp[i - c] + 1)
                }
            }
            dp[i] = cost
            print("\(i): \(dp[i])")
        }
        
        if dp[amount] == maxValue {
            return -1
        }
        
        return dp[amount]
    }
}

let s = Solution()
//let coins = [1,2,5]
//let amount = 11
//
//s.coinChange(coins, amount)

// 0 1 2 3 4 5 6 7 8 9 10 11
// 0: 0
// 1: dp[0] + 1         = 1
// 2: min(dp[1] + 1)    = 2
// 3: min(dp[2] + 1)    = 3
// 4: min(dp[3] + 1)    = 4
// 5: min(dp[4] + 1, dp[0] + 1) = 1
//

let coins = [2]
let amount = 3

s.coinChange(coins, amount)


//: [Next](@next)
