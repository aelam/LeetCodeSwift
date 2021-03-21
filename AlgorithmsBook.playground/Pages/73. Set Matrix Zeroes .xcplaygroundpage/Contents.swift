//: [Previous](@previous)

/*:
 
[73. Set Matrix Zeroes](https://leetcode-cn.com/problems/set-matrix-zeroes/)
 
Given an `m x n` matrix. If an element is 0, set its entire row and column to 0. Do it [in-place](https://en.wikipedia.org/wiki/In-place_algorithm).

Follow up:

* A straight forward solution using O(mn) space is probably a bad idea.
* A simple improvement uses O(m + n) space, but still not the best solution.
* Could you devise a constant space solution?


![](mat1.jpg)
 
```
Example 1:


Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
Output: [[1,0,1],[0,0,0],[1,0,1]]
```

 
![](mat2.jpg)
 
```
Example 2:


Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
```

Constraints:

* m == matrix.length
* n == matrix[0].length
* 1 <= m, n <= 200
* -231 <= matrix[i][j] <= 231 - 1

*/
class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        
        var rows = Set<Int>()
        var columns = Set<Int>()
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                if matrix[i][j] == 0 {
                    rows.insert(i)
                    columns.insert(j)
                }
            }
        }

        for i in rows {
            matrix[i] = [Int](repeating: 0, count: matrix[0].count)
        }
        
        for i in columns {
            for j in 0..<matrix.count {
                matrix[j][i] = 0
            }
        }
    }
}

var matrix = [[0,1,2,0],
              [3,4,5,2],
              [1,3,1,5]]

let s = Solution()
print(matrix)
s.setZeroes(&matrix)


//: [Next](@next)
