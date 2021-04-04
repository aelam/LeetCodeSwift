//: [Previous](@previous)

/*:

 [542. 01 Matrix](https://leetcode-cn.com/problems/01-matrix/)
 
 
 Given a matrix consists of 0 and 1, find the distance of the nearest 0 for each cell.
 The distance between two adjacent cells is 1.


 ```
 Example 1:

 Input:
 [[0,0,0],
  [0,1,0],
  [0,0,0]]

 Output:
 [[0,0,0],
  [0,1,0],
  [0,0,0]]
 ```
 
 ```
 Example 2:

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
 > * The number of elements of the given matrix will not exceed 10,000.
 > * There are at least one 0 in the given matrix.
 > * The cells are adjacent in only four directions: up, down, left and right.

 */


class Solution {
    func updateMatrix(_ matrix: [[Int]]) -> [[Int]] {
        
        var result = matrix
        var visited = [[Int]](repeating: [Int](repeating: 0, count: matrix[0].count), count: matrix.count)
        var queue = [(Int,Int)]()
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                if matrix[i][j] == 0 {
                    queue.append((i, j))
                    visited[i][j] = 1
                    
                }
            }
        }
        
        while queue.count > 0 {
            let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]
            
            let p = queue.removeFirst()
            for d in directions {
                let newX = p.0 + d.0
                let newY = p.1 + d.1
                
                if newX >= 0 && newX < matrix.count && newY >= 0 && newY < matrix[0].count && visited[newX][newY] == 0 {
                    result[newX][newY] = result[p.0][p.1] + 1
                    visited[newX][newY] = 1
                    
                    queue.append((newX, newY))
                }
            }
        }
        return result
    }
}

let s = Solution()

//let input = [[0,0,0],
//            [0,1,0],
//            [1,1,1]]

let input = [[0],[0],[0],[0],[0]]
print(s.updateMatrix(input))


//: [Next](@next)
