//
//  main.swift
//  88. Merge Sorted Array
//
//  Created by ryan on 23/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

Note:
You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.


*/

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if n == 0 {
            return
        }
        
        var pivot1 = m - 1
        var pivot2 = n - 1
        var location = m + n - 1

        while location >= 0 && pivot2 >= 0 {
            if pivot1 < 0 {
                nums1[location] = nums2[pivot2]
                pivot2 -= 1
            } else if nums1[pivot1] > nums2[pivot2] {
                nums1[location] = nums1[pivot1]
                pivot1 -= 1
            } else {
                nums1[location] = nums2[pivot2]
                pivot2 -= 1
            }
            location -= 1
        }
    }
}

let solution = Solution()
var num1 = [0]
var num2 = [1]
solution.merge(&num1, 0, num2, 1)
print(num1)
