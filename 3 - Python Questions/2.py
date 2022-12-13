"""Given a list of integers, and an integer N, write a function “sum_to_n” to find all
combinations that sum to the value N.
Input:
integers = [2,3,5]
N = 8
Output
def sum_to_n(integers, N) ->
[
[2,2,2,2],
[2,3,3],
[3,5]
]"""

def sum_to_n(integers, N):

    def find_numbers(combinations, integers, temp, N, index):
        
        if(N == 0):
            # Adding deep copy of list to combinations
            combinations.append(list(temp))
            return
        
        # Iterate from index to len(integers) - 1
        for i in range(index, len(integers)):
    
            # checking that N does not become negative
            if(N - integers[i]) >= 0:
    
                # adding element which can contribute to N
                temp.append(integers[i])
                find_numbers(combinations, integers, temp, N-integers[i], i)
    
                # removing element from list (backtracking)
                temp.remove(integers[i])
                
    combinations = []
    temp = []
    integers = sorted(list(set(integers)))
    find_numbers(combinations, integers, temp, N, 0)
    
    return combinations

integers = [2,3,5]
N = 8

print(sum_to_n(integers, N))