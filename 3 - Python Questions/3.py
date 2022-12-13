"""Given two string arrays word1 and word2, return true if the two arrays represent the same
string, and false otherwise.
A string is represented by an array if the array elements are concatenated in order to form
the string.
Example :
Input: word1 = ["ab", "c"], word2 = ["a", "bc"]
Output: true
Input: word1 = ["ab", "c"], word2 = ["ac", "b"]
Output: false"""

def compare_strings(word1, word2):

    return True if ''.join(word1) == ''.join(word2) else False

# Test 1 (True)
word1 = ["ab", "c"]
word2 = ["a", "bc"]

print(compare_strings(word1, word2))

# Test 2 (False)
word1 = ["ab", "c"]
word2 = ["ac", "b"]

print(compare_strings(word1, word2))