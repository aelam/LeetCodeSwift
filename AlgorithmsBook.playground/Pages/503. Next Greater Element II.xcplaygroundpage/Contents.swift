//: [Previous](@previous)
/*:
[503. Next Greater Element II](https://leetcode-cn.com/problems/next-greater-element-ii/)
 
Given a circular array (the next element of the last element is the first element of the array), print the Next Greater Number for every element. The Next Greater Number of a number x is the first greater number to its traversing-order next in the array, which means you could search circularly to find its next greater number. If it doesn't exist, output -1 for this number.
 

 ```Example 1:

Input: [1,2,1]
Output: [2,-1,2]
 
 
Explanation: The first 1's next greater number is 2;
The number 2 can't find next greater number;
The second 1's next greater number needs to search circularly, which is also 2.
 ```

> Note: The length of given array won't exceed 10000.
*/


class Solution {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {
        var stack = [Int]()
        var results = [Int].init(repeating: -1, count: nums.count)
        
        for i in 0..<nums.count {
            while !stack.isEmpty && nums[i] > nums[stack.last!] {
                let prevIndex = stack.popLast()!
                results[prevIndex] = nums[i]
            }
            stack.append(i)
        }
        
        for i in 0..<nums.count {
            while nums[i] > nums[stack.last!] {
                let prevIndex = stack.popLast()!
                results[prevIndex] = nums[i]
            }
            stack.append(i)
        }

        return results
    }
}

let s = Solution()

//let nums = [5, 4, 3, 2, 1]
//s.nextGreaterElements(nums)

// [1,2,1]
// [0(1)]
// [1(2)]   [2, -1, -1]
// [1(2), 2(1)] <-- 1(2)
//

//[5, 4, 3, 2, 1]

//let nums = [1,1,1,1,1]
//print(s.nextGreaterElements(nums))

let nums = [1,2,1]
print(s.nextGreaterElements(nums))

//: [Next](@next)
