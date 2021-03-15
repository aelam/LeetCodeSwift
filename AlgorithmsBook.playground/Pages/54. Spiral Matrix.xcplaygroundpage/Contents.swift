//: [Previous](@previous)


/*: [54. Spiral Matrix](https://leetcode-cn.com/problems/spiral-matrix/)
 
Given an m x n matrix, return all elements of the matrix in spiral order.

 ![](spiral1.jpg)

 ```
Example 1:


Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
Output: [1,2,3,6,9,8,7,4,5]
 
 ```
 
 ![](spiral.jpg)

 ```
Example 2:

Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
Output: [1,2,3,4,8,12,11,10,9,5,6,7]
```

 Constraints:

 * m == matrix.length
 * n == matrix[i].length
 * 1 <= m, n <= 10
 * -100 <= matrix[i][j] <= 100

 */

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var results = [Int]()
        let right = (0, 1)
        let left  = (0, -1)
        let up    = (-1, 0)
        let down  = (1, 0)

        var leftBound = 0
        var rightBound = matrix[0].count - 1
        
        var topBound = 0;
        var bottombound = matrix.count - 1
        
        let count = matrix.count * matrix[0].count
        
        var column = 0, row = 0
        
        
        var direction = right
        var i = 0
        while i <= count {
            
            if direction == right {
                if (column < rightBound) {
                    results.append(matrix[row][column])
                    column += 1
                } else {
                    //results.append(matrix[row][column])
                    topBound += 1
                    direction = down
                }
            } else if direction == down {
                if (row < bottombound) {
                    results.append(matrix[row][column])
                    row += 1
                } else {
                    //results.append(matrix[row][column])
                    rightBound -= 1
                    direction = left
                }
            } else if direction == left {
                if (column > leftBound) {
                    results.append(matrix[row][column])
                    column -= 1
                } else {
                    //results.append(matrix[row][column])
                    bottombound -= 1
                    direction = up
                }
            } else if direction == up {
                if (row > topBound) {
                    results.append(matrix[row][column])
                    row -= 1
                } else {
                    //results.append(matrix[row][column])
                    leftBound += 1
                    direction = right
                }
            }
            
            i += 1
        }
        
        return results
    }
}

let s = Solution()
//let matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
let matrix = [[1,2,3],
              [4,5,6],
              [7,8,9]]

let rs = s.spiralOrder(matrix)
print(rs)


//: [Next](@next)
 
