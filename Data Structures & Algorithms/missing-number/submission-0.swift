class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let numsSorted = nums.sorted()
        let fullRange = Array(0...nums.count) as [Int]
        
        var lhs = 0
        var rhs = fullRange.count - 1
        while lhs < rhs {
            let mid = lhs + (rhs - lhs) / 2
            if fullRange[mid] == numsSorted[mid] {
                lhs += 1
            } else if fullRange[mid] < numsSorted[mid] {
                rhs -= 1
            }
        }
        return lhs
    }
}