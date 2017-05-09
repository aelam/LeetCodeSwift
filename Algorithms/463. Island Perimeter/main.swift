//
//  main.swift
//  463. Island Perimeter
//
//  Created by ryan on 09/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//


class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var perimeter = 0
        for y in 0..<grid.count {
            for x in 0..<grid[y].count {
                if grid[y][x] == 1 {
                    perimeter += 4
                    
                    if x > 0 && grid[y][x - 1] == 1 {
                        perimeter -= 2
                    }
                    if y > 0 && grid[y - 1][x] == 1 {
                        perimeter -= 2
                    }

                }
                
            }
        }
        
        return perimeter
    }
}


let testCase = [[0,1,0,0],[1,1,1,0],[0,1,0,0], [1,1,0,0]]
let solution = Solution()
print(solution.islandPerimeter(testCase))

