//: [Previous](@previous)


/*:

 [1143. Longest Common Subsequence](https://leetcode-cn.com/problems/longest-common-subsequence/)

 Given two strings text1 and text2, return the length of their longest common subsequence. If there is no common subsequence, return 0.

 A subsequence of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

 For example, "ace" is a subsequence of "abcde".
 A common subsequence of two strings is a subsequence that is common to both strings.


```
 Example 1:

 Input: text1 = "abcde", text2 = "ace"
 Output: 3
 Explanation: The longest common subsequence is "ace" and its length is 3.
 ```

 ```
 Example 2:

 Input: text1 = "abc", text2 = "abc"
 Output: 3
 Explanation: The longest common subsequence is "abc" and its length is 3.
```

 ```
 Example 3:

 Input: text1 = "abc", text2 = "def"
 Output: 0
 Explanation: There is no such common subsequence, so the result is 0.
```

 Constraints:

 * 1 <= text1.length, text2.length <= 1000
 * text1 and text2 consist of only lowercase English characters.


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/longest-common-subsequence
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。


[YouTube Link](https://www.youtube.com/watch?v=ASoaQq66foQ)

import Foundation

var str = "Hello, playground"

 */


class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        let c1 = Array(text1)
        let c2 = Array(text2)

        var row = [Int].init(repeating: 0, count: c1.count + 1)
        var matrix = [[Int]].init(repeating: row, count: c2.count + 1)

        print(matrix)

        for i in 1...matrix.count {
            for j in 1...matrix[i].count {
                if c1[j] == c2[i] {
                    matrix[i][j] = 1 + max(matrix[i - 1][j], matrix[i][j - 1])
                } else {
                    matrix[i][j] = max(matrix[i - 1][j], matrix[i][j - 1])
                }
            }
            print(matrix)
        }

        print(matrix)

        return matrix[matrix.count - 1][matrix[0].count - 1]

    }
}

let c1 = "abcde"
let c2 = "ace"

let s = Solution()
let r = s.longestCommonSubsequence(c1, c2)
print(r)



//: [Next](@next)
