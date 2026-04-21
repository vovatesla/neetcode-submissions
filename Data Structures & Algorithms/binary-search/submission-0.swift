class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var lhs = 0
        var rhs = nums.count - 1
        while lhs <= rhs {
            let mid = lhs + (rhs - lhs) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                lhs += 1
            } else {
                rhs -= 1
            }
        }
        return -1
    }
}