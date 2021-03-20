//: [Previous](@previous)

/*:
 [392. Is Subsequence](https://leetcode-cn.com/problems/is-subsequence/)
 
 Given two strings s and t, check if s is a subsequence of t.

 A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

  
```
 Example 1:

 Input: s = "abc", t = "ahbgdc"
 Output: true
```
```
 Example 2:

 Input: s = "axc", t = "ahbgdc"
 Output: false
```

 Constraints:

 * 0 <= s.length <= 100
 * 0 <= t.length <= 104
 * s and t consist only of lowercase English letters.
  

 Follow up: If there are lots of incoming s, say s1, s2, ..., sk where k >= 109, and you want to check one by one to see if t has its subsequence. In this scenario, how would you change your code?

 
 */

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let ss = Array(s)
        let tt = Array(t)

        var i = 0
        var j = 0

        while i < tt.count && j < ss.count {
            i += 1
            
            if tt[i] == ss[j] {
                j += 1
            }
        }

        return j == ss.count
    }
}

let ss = Solution()

let s = "abc", t = "ahbgdc"
ss.isSubsequence(s, t)

//: [Next](@next)
