//: [Previous](@previous)

/*: [542. 01 Matrix ](https://leetcode-cn.com/problems/01-matrix/)

Given a matrix consists of 0 and 1, find the distance of the nearest 0 for each cell.

The distance between two adjacent cells is 1.


```Example 1:

Input:
[[0,0,0],
 [0,1,0],
 [0,0,0]]

Output:
[[0,0,0],
 [0,1,0],
 [0,0,0]]
```
 
```Example 2:

Input:
[[0,0,0],
 [0,1,0],
 [1,1,1]]

Output:
[[0,0,0],
 [0,1,0],
 [1,2,1]]
```

>
> 1. The number of elements of the given matrix will not exceed `10,000`.
> 2. There are at least one 0 in the given matrix.
> 3. The cells are adjacent in only four directions: up, down, left and right.
 
*/

class Solution {
    func updateMatrix(_ matrix: [[Int]]) -> [[Int]] {
        let count = matrix.count
        var output = [[Int]](repeating: [Int](repeating: Int.max, count: count), count: count)
        
        return output
    }
}

let s = Solution()

let input = [[0,0,0],
             [0,1,0],
             [0,0,0]]


s.updateMatrix(input)

//: [Next](@next)
