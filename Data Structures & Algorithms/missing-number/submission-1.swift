class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var result = 0
        
        for i in 0...nums.count {
            result ^= i
        }
        
        for num in nums {
            result ^= num
        }
        
        return result
    }
}