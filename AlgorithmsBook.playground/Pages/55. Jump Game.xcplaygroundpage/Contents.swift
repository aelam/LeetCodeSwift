//: [Previous](@previous)

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        if nums.count == 0 {
            return false
        }
        var results = [Int].init(repeating: Int.max, count: nums.count)

        results[0] = 0

        for i in 1..<(nums.count-1) {
            let v = nums[i]

            print("i:", i)
            print(min(nums[i-1], nums.count - 1))
            print(i...min(nums[i-1], nums.count - 1))
            
            for j in i...min(nums[i-1] + 1, nums.count - 1) {
                results[j] = min(results[i-1] + 1, results[j])
            }
            print(results)
        }

        return results[nums.count - 1] < Int.max

        // 2 3 1 1 4
        // 0-1-1-1-1
        // 2 1 1
        //     2 2 2


    }
}

let s = Solution()
s.canJump([2, 3, 1, 1, 4])

//: [Next](@next)
