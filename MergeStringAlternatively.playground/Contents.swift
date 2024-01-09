import UIKit


class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        // splitting both strings such that we get an array
        let word1Split = word1.split(separator: "").map { String($0) }
        let word2Split = word2.split(separator: "").map { String($0) }
        // if both arrays equal
        if word1Split.count == word2Split.count {
            var num = 0
            // printing string alternatively using array index
            for iword in word1Split {
                var jword = word2Split[num]
                var merged = iword + jword
                print(merged, terminator: "")
                num += 1
                }
        // if one word1Split.count is less
        } else if word1Split.count < word2Split.count {
            print()
            // for the strings of same index
            if word1Split.count < word2Split.count {
                var num = 0
                for iword in word1Split {
                    var jword = word2Split[num]
                    var merged = iword + jword
                    print(merged, terminator: "")
                    num += 1
                    }
            // for string of excessive array
                var num1 = word2Split.count - num
                while num1 != 0 {
                    var lastElementsOfword2Split = word2Split.count - num1
                    print(word2Split[lastElementsOfword2Split], terminator: "")
                    num1 -= 1
                }
            }
        // for the strings of same index
        } else {
            print()
            // for the strings of same index
            var num = 0
            for iword in word2Split {
                var jword = word1Split[num]
                var merged = jword + iword
                print(merged, terminator: "")
                num += 1
                }
            // for string of excessive array
            var num1 = word1Split.count - num
            while num1 != 0 {
                var lastElementsOfword2Split = word1Split.count - num1
                print(word1Split[lastElementsOfword2Split], terminator: "")
                num1 -= 1
            }
        }
        return "" // dummy value for return such that it doesn't crash
    }
}

let solution1 = Solution().mergeAlternately("abc", "pqr")
let solution2 = Solution().mergeAlternately("ab", "pqrs")
let solution3 = Solution().mergeAlternately("abcd", "pq")

print(solution1)
print(solution2)
print(solution3)


