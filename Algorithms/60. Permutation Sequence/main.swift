//
//  main.swift
//  60. Permutation Sequence
//
//  Created by ryan on 27/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
 
 The set [1,2,3,…,n] contains a total of n! unique permutations.
 
 By listing and labeling all of the permutations in order,
 We get the following sequence (ie, for n = 3):
 
 "123"
 "132"
 "213"
 "231"
 "312"
 "321"
 Given n and k, return the kth permutation sequence.
 
 Note: Given n will be between 1 and 9 inclusive.
 
 */


class Solution {
    func getPermutation(_ n: Int, _ k: Int) -> String {
        if n == 1 {
            return "1"
        }
        
        var intArray = (1...n).map { $0 }
        let permuCount = A(n - 1, 1)
        return getPermutation(&intArray, permuCount, k - 1)
    }
    
    func getPermutation(_ input: inout [Int], _ permuCount: Int , _ k: Int) -> String {
        if input.count <= 1 {
            return String(input.first!)
        }
        
        var results = String()
        let outputIndex = k / permuCount
        let output = input.remove(at: outputIndex)
        results += String(output)

        let newPermuCount = permuCount / input.count
        results += getPermutation(&input, newPermuCount, k % permuCount)
        
        return results
        
    }

    func getbang(_ n: Int) -> Int {
        let f = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
        return f[n]
    }

    func A(_ n: Int, _ m: Int) -> Int {
        if m == 1 {
            return getbang(n)
        }
        
        var result = 1
        if n == m {
            return n
        }
        for i in m...n {
            result *= i
        }
        return result
    }
}



let solution = Solution()
//print(solution.A(4, 1))
print(solution.getPermutation(2, 2))
print(solution.getPermutation(4, 1))
print(solution.getPermutation(4, 2))
print(solution.getPermutation(4, 3))
print(solution.getPermutation(4, 4))
print(solution.getPermutation(4, 5))
