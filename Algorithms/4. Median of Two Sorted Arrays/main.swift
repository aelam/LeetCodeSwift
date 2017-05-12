//
//  main.swift
//  4. Median of Two Sorted Arrays
//
//  Created by ryan on 09/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let n = nums1.count
        let m = nums2.count
        let k = (m + n - 1) / 2
        
        return findKthInSortedArrays(nums1, nums2, k)
    }
    
    
    func findKthInSortedArrays(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Double {
//        let n = nums1.count
//        let m = nums2.count
//        
//        let count = m + n
//        let mid = (count - 1) / 2
        return 0
        
    }
}
