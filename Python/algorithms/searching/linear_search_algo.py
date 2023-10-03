def linear_search(arr, target):
    """
    Perform linear search on a list to find the target element.

    Args:
    arr (list): The list to search in.
    target: The element to search for.

    Returns:
    int: The index of the target element if found, -1 if not found.
    """
    for index, element in enumerate(arr):
        if element == target:
            return index
    return -1

# Example usage:
arr = [1, 3, 5, 7, 9, 2, 4, 6, 8]
target = 5

result = linear_search(arr, target)
if result != -1:
    print(f"Element {target} found at index {result}.")
else:
    print(f"Element {target} not found in the list.")
