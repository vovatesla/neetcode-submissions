class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let stringModified = s.lowercased().filter {$0.isLetter || $0.isNumber }
        guard !stringModified.isEmpty else { return true }
        var lhs = stringModified.startIndex
        var rhs = stringModified.index(before: stringModified.endIndex)
        while lhs < rhs {
            if stringModified[lhs] == stringModified[rhs] {
                lhs = stringModified.index(after: lhs)
                rhs = stringModified.index(before: rhs)
                continue
            } else {
                return false
            }
        }
        return true
    }
}