class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sDict = [Character:Int]()
        var tDict = [Character:Int]()

        for letter in s {
            if sDict[letter] == nil {
                sDict[letter] = 1
            } else {
                sDict[letter]! += 1
            }
        }
        
        for letter in t {
            if tDict[letter] == nil {
                tDict[letter] = 1
            } else {
                tDict[letter]! += 1
            }
        }
        
        return sDict == tDict
    }
}