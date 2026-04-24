class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int: Int]()
        for (i, num) in nums.enumerated() {
            let compl = target - num
            if let index = hashMap[compl] {
                return [index, i]
            } else {
                hashMap[num] = i
            }
        }
        return [-1, 1]
    }
}