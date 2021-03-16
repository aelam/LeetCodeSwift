//: [Previous](@previous)

/*: [91. Decode Ways](https://leetcode-cn.com/problems/decode-ways/)
 
 A message containing letters from A-Z can be encoded into numbers using the following mapping:

 ```
 'A' -> "1"
 'B' -> "2"
 ...
 'Z' -> "26"
 ```
 
 To decode an encoded message, all the digits must be grouped then mapped back into letters using the reverse of the mapping above (there may be multiple ways). For example, "11106" can be mapped into:

 `"AAJF"` with the grouping `(1 1 10 6)`
 
 `"KJF"` with the grouping `(11 10 6)`
 
 Note that the grouping `(1 11 06)` is invalid because `"06"` cannot be mapped into `'F'` since `"6"` is different from `"06"`.

 Given a string s containing only digits, return the number of ways to decode it.

 The answer is guaranteed to fit in a 32-bit integer.

  
```
 Example 1:

 Input: s = "12"
 Output: 2
 Explanation: "12" could be decoded as "AB" (1 2) or "L" (12).
```
 
```
 Example 2:

 Input: s = "226"
 Output: 3
 Explanation: "226" could be decoded as "BZ" (2 26), "VF" (22 6), or "BBF" (2 2 6).
 
```
```
 Example 3:

 Input: s = "0"
 Output: 0
 Explanation: There is no character that is mapped to a number starting with 0.
 The only valid mappings with 0 are 'J' -> "10" and 'T' -> "20", neither of which start with 0.
 Hence, there are no valid ways to decode this since all digits need to be mapped.
```

 ```
 Example 4:

 Input: s = "06"
 Output: 0
 Explanation: "06" cannot be mapped to "F" because of the leading zero ("6" is different from "06").
 ```

 Constraints:

 * 1 <= s.length <= 100
 * s contains only digits and may contain leading zero(s).
 
 */
class Solution {
    func numDecodings(_ s: String) -> Int {
        let n = s.count
        let characters = Array(s)
        var dp: [Int] = [Int].init(repeating: 0, count: n + 1)
        dp[0] = 1
        dp[1] = 1

        for i in 2...s.count {
            if characters[i-1] != Character("0") {
                dp[i] = dp[i-1]
            }
            
            let vv = Int(String(characters[i-2...i-1]))!
            if vv <= 26 && vv >= 10 {
                dp[i] += dp[i-2]
            }
        }

        return dp[n]
        
    }
    
    
    func numDecodings(_ characters: [Character], start: Int) -> Int {
        
        print("start:", start)
        let left = characters.count - 1 - start
        
        if left == 0 {
            return 0
        }
        else if left == 1 {
            return 1
        }
        
        var value = 0
        if left > 1 {
            let vv = Int(String(characters[start...start+1]))!
            if vv <= 26 && vv >= 1 {
                value += (1 + numDecodings(characters, start: start + 2))
            }
        }
        
        value += numDecodings(characters, start: start + 1)

        return value
    }

}

let s = Solution()
s.numDecodings("11106")
//: [Next](@next)
