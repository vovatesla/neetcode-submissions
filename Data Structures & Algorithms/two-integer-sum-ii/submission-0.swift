class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var lhs = 0
        var rhs = numbers.count - 1
        guard rhs >= lhs else {
            return [-1, -1]
        }
        while lhs < rhs {
            let sum = numbers[lhs] + numbers[rhs]
            if sum == target {
                return [lhs + 1, rhs + 1]
            } else if sum < target {
                lhs += 1
            } else {
                rhs -= 1
            }
        }
        return [-1, -1]
    }
}