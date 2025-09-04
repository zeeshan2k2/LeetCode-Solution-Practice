class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        guard (str1 + str2) == (str2 + str1) else {
            return ""
        }
        
        let gcdInt = gcd(str1.count, str2.count)
        return String(str1.prefix(gcdInt))
        
    }
    
    private func gcd(_ str1Count: Int, _ str2Count: Int) -> Int {
        if str2Count == 0 {
            return str1Count
        } else {
            return gcd(str2Count, str1Count % str2Count)
        }
    }
}


let solution = Solution()
solution.gcdOfStrings("ABABAB", "AB")
