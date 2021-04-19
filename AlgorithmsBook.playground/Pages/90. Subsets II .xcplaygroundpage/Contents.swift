//: [Previous](@previous)

/*:

 [90. Subsets II](https://leetcode-cn.com/problems/subsets-ii/)
 
Given an integer array `nums` that may contain duplicates, return all possible subsets (the power set).

The solution set must not contain duplicate subsets. Return the solution in <p>any order</p>.

 
```
Example 1:

Input: nums = [1,2,2]
Output: [[],[1],[1,2],[1,2,2],[2],[2,2]]
 ```
 
 ```
Example 2:

Input: nums = [0]
Output: [[],[0]]
 ```

Constraints:

* 1 <= nums.length <= 10
* -10 <= nums[i] <= 10

 */


class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var results = [[Int]]()
        results.append([])

        let n = nums.sorted()
        
        var last = -1
        for i in 0..<n.count {
            
            if last != -1 {
                if n[i] == n[last] {
                    continue
                }
            }
            
            subsetsWithDup(n, i, &results)
            last = i
        }

        return results
    }
    
    
    func subsetsWithDup(_ nums: [Int], _ index: Int, _ results: inout [[Int]]) {
        
    }
}


let nums = [1,2,2]

let s = Solution()
let results = s.subsetsWithDup(nums)

print(results)


//: [Next](@next)
