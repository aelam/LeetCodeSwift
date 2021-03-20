//: [Previous](@previous)

/*:
 [150. Evaluate Reverse Polish Notation](https://leetcode-cn.com/problems/evaluate-reverse-polish-notation)
 
Evaluate the value of an arithmetic expression in [Reverse Polish Notation](https://en.wikipedia.org/wiki/Reverse_Polish_notation).

Valid operators are `+`, `-`, `*`, and `/`. Each operand may be an integer or another expression.

Note that division between two integers should truncate toward zero.

It is guaranteed that the given RPN expression is always valid. That means the expression would always evaluate to a result, and there will not be any division by zero operation.

 
```
Example 1:

Input: tokens = ["2","1","+","3","*"]
Output: 9
Explanation: ((2 + 1) * 3) = 9
```

```
Example 2:

Input: tokens = ["4","13","5","/","+"]
Output: 6
Explanation: (4 + (13 / 5)) = 6
```
```
Example 3:

Input: tokens = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
Output: 22
Explanation: ((10 * (6 / ((9 + 3) * -11))) + 17) + 5
= ((10 * (6 / (12 * -11))) + 17) + 5
= ((10 * (6 / -132)) + 17) + 5
= ((10 * 0) + 17) + 5
= (0 + 17) + 5
= 17 + 5
= 22
```

Constraints:

* 1 <= tokens.length <= 10^4
* `tokens[i]` is either an operator: `"+"`, `"-"`, `"*"`, or `"/"`, or an integer in the range `[-200, 200]`.

*/

extension String {
    var isNumeric : Bool {
        return Double(self) != nil
    }
}

class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        
        var stack = [String]()
        
        for i in 0..<tokens.count {
            let value = tokens[i]
            
            if value.isNumeric {
                stack.append(value)
            } else {
                let v2 = Int(stack.popLast()!)!
                let v1 = Int(stack.popLast()!)!
                
                var v3: Int = 0
                switch value {
                case "*":
                    v3 = v1 * v2
                case "/":
                    v3 = v1 / v2
                case "+":
                    v3 = v1 + v2
                case "-":
                    v3 = v1 - v2
                default:
                    break
                }
                
                stack.append("\(v3)")
            }
        }
        
        return Int(stack[0])!
    }
}


/// ["2","1","+","3","*"]
/// ["4","13","5","/","+"]
/// ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
/// 10, 6, -121, /
///
///
let s = Solution()

//let input = ["2","1","+","3","*"]
let input = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
    //["4","13","5","/","+"]

s.evalRPN(input)

//: [Next](@next)
