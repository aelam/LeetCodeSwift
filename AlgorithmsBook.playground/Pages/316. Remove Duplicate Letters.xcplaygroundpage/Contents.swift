//: [Previous](@previous)

/*:
[316. Remove Duplicate Letters](https://leetcode-cn.com/problems/remove-duplicate-letters/)
 
Given a string s, remove duplicate letters so that every letter appears once and only once. You must make sure your result is the smallest in lexicographical order among all possible results.

Note: This question is the same as 1081: https://leetcode.com/problems/smallest-subsequence-of-distinct-characters/

 
```
Example 1:

Input: s = "bcabc"
Output: "abc"
```
```
Example 2:

Input: s = "cbacdcbc"
Output: "acdb"
```

Constraints:

* 1 <= s.length <= 104
* s consists of lowercase English letters.
 
*/

extension Character {
    static let aInt = Character("a").asciiValue

    var asciiValue: Int {
        get {
            let s = String(self).unicodeScalars
            return Int(s[s.startIndex].value)
        }
    }
    
    static func create(_ value: Int) -> Character {
        return Character(UnicodeScalar(value + Character.aInt)!)
    }
}

class Solution {
    func removeDuplicateLetters(_ s: String) -> String {
        let array = Array(s)
        var values = [Int](repeating: 0, count: 26)
        var results = ""

        for i in 0..<array.count {
            let v = array[i].asciiValue - Character.aInt
            if values[v] == 0 {
                results.append(array[i])
                values[v] = 1
            }
        }

        return results
    }
}

let s = Solution()
s.removeDuplicateLetters("cbacdcbc")


//: [Next](@next)
