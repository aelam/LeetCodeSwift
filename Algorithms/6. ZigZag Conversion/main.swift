//
//  main.swift
//  6. ZigZag Conversion
//
//  Created by ryan on 24/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

P   A   H   N
A P L S I I G
Y   I   R
And then read line by line: "PAHNAPLSIIGYIR"
Write the code that will take a string and make this conversion given a number of rows:

string convert(string text, int nRows);
convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".
*/


// 常规方法按照Z型走势依次给字符串赋值
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        var results = [[Character]]()

        var row = 0
        var direction = 1
        for c in s.characters {
            if results.count <= row {
               results.append([])
            }
            results[row].append(c)
            if row == 0 {
                direction = 1
            } else if row == numRows - 1 {
                direction = -1
            }
            row += direction
        }
        
        var result = ""
        for r in results {
            result += String(r)
        }
        return result
    }
}


let solution = Solution()
print(solution.convert("PAYPALISHIRING", 3))
print(solution.convert("PAYPALISHIRING", 4) == "PINALSIGYAHRPI")
