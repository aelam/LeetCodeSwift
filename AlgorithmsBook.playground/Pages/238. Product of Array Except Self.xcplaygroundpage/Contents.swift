//: [Previous](@previous)


/*:

 [238. Product of Array Except Self](https://leetcode-cn.com/problems/product-of-array-except-self)

 Given an integer array `nums`, return an array answer such that `answer[i]` is equal to the product of all the elements of nums except `nums[i]`.

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.


```
 Example 1:

 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 ```

 ```
 Example 2:

 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]
```

 Constraints:

 * 2 <= nums.length <= 105
 * -30 <= nums[i] <= 30
 * The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.


 Follow up:

 Could you solve it in `O(n)` time complexity and without using division?
 Could you solve it with `O(1)` constant space complexity? (The output array does not count as extra space for space complexity analysis.)

 */

import Foundation


class Solution {

    func productExceptSelf(_ input: [Int]) -> [Int] {
        let count = input.count
        var leftProducts = [Int].init(repeating: 1, count: count)
        var rightProducts = [Int].init(repeating: 1, count: count)

        leftProducts[0] = 1
        for i in 1..<count {
            leftProducts[i] = leftProducts[i-1] * input[i-1]
        }

        var t = 1
        for i in (0...(count - 1)).reversed() {
            leftProducts[i] = t * leftProducts[i]
            t = t * input[i]
        }

        return leftProducts

    }

}

let s = Solution()

let input = [1, 2, 3, 4]
let output = s.productExceptSelf(input)
print(output)

// 24 12 8 6
//
//: [Next](@next)
