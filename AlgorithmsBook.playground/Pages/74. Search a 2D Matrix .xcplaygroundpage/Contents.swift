//: [Previous](@previous)
/*:

 [74. Search a 2D Matrix](https://leetcode-cn.com/problems/search-a-2d-matrix)

Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

Integers in each row are sorted from left to right.
The first integer of each row is greater than the last integer of the previous row.

 ![](mat.jpg)
```
Example 1:


Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
Output: true
 ```

 ![](mat2.jpg)
 ```
Example 2:


Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
Output: false
```

Constraints:

 * m == matrix.length
 * n == matrix[i].length
 * 1 <= m, n <= 100
 * -104 <= matrix[i][j], target <= 104

 */


class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let row = findRow(matrix, target)

        return true
    }

    func findRow(_ matrix: [[Int]], _ target: Int) -> Int {
        var low = 0
        var high = matrix.count - 1
        var mid = (low + high) / 2

        while matrix[mid][0] > target {
            
        }

    }
}

//: [Next](@next)
