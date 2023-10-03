def binary_search(arr, target):
    """
    Perform binary search on a sorted list to find the target element.

    Args:
    arr (list): The sorted list to search in.
    target: The element to search for.

    Returns:
    int: The index of the target element if found, -1 if not found.
    """
    left, right = 0, len(arr) - 1  # Define the search range using pointers.

    while left <= right:
        mid = left + (right - left) // 2  # Calculate the middle index.

        if arr[mid] == target:  # If the middle element is the target, return its index.
            return mid
        elif arr[mid] < target:  # If the middle element is less than the target, search the right half.
            left = mid + 1
        else:  # If the middle element is greater than the target, search the left half.
            right = mid - 1

    return -1  # Target element not found in the list.

# Example usage:
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
target = 6

result = binary_search(arr, target)
if result != -1:
    print(f"Element {target} found at index {result}.")
else:
    print(f"Element {target} not found in the list.")
