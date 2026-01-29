
class Solution {
    
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        
        var results: [Character] = []
        var word1Array = Array(word1)
        var word2Array = Array(word2)
        
        let totalCount = max(word1Array.count, word2Array.count)
        
        for i in 0..<totalCount {
            if i < word1Array.count {
                results.append(word1Array[i])
            }
            if i < word2Array.count {
                results.append(word2Array[i])
            }
        }
    
        return String(results)
    }
}


let solution = Solution()

print(solution.mergeAlternately("abcdef", "def"))
print(solution.mergeAlternately("abc", "defghi"))
print(solution.mergeAlternately("abc", "def"))
