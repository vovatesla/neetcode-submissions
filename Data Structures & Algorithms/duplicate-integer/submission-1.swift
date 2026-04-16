class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let numsSet = Set(nums)
        return numsSet.count == nums.count ? false : true
    }
}
