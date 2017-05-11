//
//  main.swift
//  11. Container With Most Water
//
//  Created by Ryan Wang on 11/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//


// https://leetcode.com/problems/container-with-most-water/#/description

/*
Given n non-negative integers a1, a2, ..., an, where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.

Note: You may not slant the container and n is at least 2.
  ↑
  |
 3|       |  |
 2|    |  |  |  |        |  |
 1| |  |  |  |  |  |     |  |
 0--|--|--|--|--|--|--|--|--|------>
    0  1  2  3  4  5  6  7  8
 
*/
class EasyUnderstandSolution {
    func maxArea(_ height: [Int]) -> Int {
        var low = 0
        var high = height.count - 1
        var area = 0
        
        while low < high {
            let minHeight = min(height[low], height[high])
            area = max(area, minHeight * (high - low))
            if low < high {
                low += 1
            } else {
                high -= 1
            }
        }
        
        return area
    }
}

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var low = 0
        var high = height.count - 1
        var area = 0
        
        while low < high {
            let minHeight = min(height[low], height[high])
            area = max(area, minHeight * (high - low))
            while low < high && height[low] <= minHeight {
                low += 1
            }
            while low < high && height[high] <= minHeight {
                high -= 1
            }
        }

        return area
    }
}

let solution = EasyUnderstandSolution()
print(solution.maxArea([1,2,4,3]))
