//: [Previous](@previous)


class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let newIntervals = intervals.sorted { (a1, a2) -> Bool in
            return a1[0] < a2[0] || (a1[0] == a2[0] && a1[1] >= a2[1])
        }

        var results = [[Int]]()
        var currentInterval = newIntervals[0]

        for i in 1..<newIntervals.count {
            if currentInterval[1] >= newIntervals[i][1] {
                // overlap to the end of newIntervals[i]
            } else if currentInterval[1] >= newIntervals[i][0] {
                // overlap to the begin of newIntervals[i]
                currentInterval[1] = newIntervals[i][1]
            } else {
                results.append(currentInterval)
                currentInterval = newIntervals[i]
            }
        }

        results.append(currentInterval)

        return results
    }
}

//let intervals = [[1,3],[8,10],[15,18], [2,6]]
let intervals = [[2,3],[5,5],[2,2],[3,4],[3,4]]


let s = Solution()

let ss = s.merge(intervals)

print(ss)


//: [Next](@next)


