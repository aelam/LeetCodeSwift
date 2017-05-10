//
//  main.swift
//  14. Longest Common Prefix
//
//  Created by ryan on 10/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

class Solution {
//    func longestCommonPrefix(_ strs: [String]) -> String {
//        let totalCount = strs.count
//        if totalCount == 0 {
//            return ""
//        }
//
//        let firstString = strs[0]
//
//        var commonPrefixEndIndex = firstString.characters.count
//        var index = 0
//        while commonPrefixEndIndex > index {
//            var qualifiedC: Character? = nil
//            for i in 0..<totalCount {
//                let str = strs[i]
//                
//                let currentCount = str.characters.count
//                commonPrefixEndIndex = min(commonPrefixEndIndex, currentCount)
//                if index >= currentCount {
//                    qualifiedC = nil
//                    break
//                }
//                
//                let strC = str[str.index(str.startIndex, offsetBy: index)]
//                
//                if i == 0 && qualifiedC == nil {
//                    qualifiedC = strC
//                } else if qualifiedC != strC {
//                    commonPrefixEndIndex = index
//                    break
//                }
//            }
//            
//            if  qualifiedC == nil {
//                commonPrefixEndIndex = index
//                break
//            }
//            
//            index += 1
//        }
//        
//        return firstString[firstString.startIndex..<firstString.index(firstString.startIndex, offsetBy: commonPrefixEndIndex)]
//    }
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {
            return ""
        }
        
        var commonPrefix = strs[0]
        for i in 1..<strs.count {
            let comparingStr = strs[i]
            if comparingStr.characters.count < commonPrefix.characters.count {
                commonPrefix = commonPrefix[commonPrefix.startIndex..<commonPrefix.index(commonPrefix.startIndex, offsetBy: comparingStr.characters.count)]
            }
            
            if commonPrefix == "" {
                return commonPrefix
            }
            
            while !comparingStr.hasPrefix(commonPrefix) && commonPrefix != "" {
                commonPrefix = commonPrefix[commonPrefix.startIndex..<commonPrefix.index(commonPrefix.startIndex, offsetBy: commonPrefix.characters.count - 1)]
            }
        }
        
        return commonPrefix
    }
}

let solution = Solution()

//print(solution.longestCommonPrefix(["abab","aba",""]))
//print(solution.longestCommonPrefix(["aca","cba"]))
print(solution.longestCommonPrefix(["a","b"]))

