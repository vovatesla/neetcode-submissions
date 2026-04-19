class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [[Int]:[String]]()
        for word in strs {
            var arr = Array(repeating: 0, count: 26)
            for letter in word {
                let index = Int(letter.asciiValue! - 97)
                arr[index] += 1
            }
            dict[arr, default: []].append(word)
        }
        return Array(dict.values)
    }
}