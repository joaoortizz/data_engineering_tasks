"""How would you remove duplicates within a list in Python?"""

def remove_with_sets(list_with_duplicates):
    """ Removing duplicates using set:
    This is the easiest way to solve the problem, but just if the order of elements does not matter. """
    return [*set(list_with_duplicates)]

def remove_with_dict(list_with_duplicates):
    """ Removing duplicates using OrderedDict:
    If you want to preserve the original order of elements after remove the duplicates,
    this is the best way to solve the problem. """
    from collections import OrderedDict

    return list(OrderedDict.fromkeys(list_with_duplicates))

list_with_duplicates = [1,5,2,3,4,4,2,1]

# Method 1
print(remove_with_sets(list_with_duplicates))

# Method 2
print(remove_with_dict(list_with_duplicates))