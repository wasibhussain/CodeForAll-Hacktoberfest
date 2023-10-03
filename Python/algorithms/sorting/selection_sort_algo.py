def selection_sort(arr):
    """
    Sort a list in ascending order using the Selection Sort algorithm.

    Args:
    arr (list): The list to be sorted.

    Returns:
    list: The sorted list.
    """
    n = len(arr)
    for i in range(n):
        min_index = i

        for j in range(i + 1, n):
            if arr[j] < arr[min_index]:
                min_index = j

        arr[i], arr[min_index] = arr[min_index], arr[i]

    return arr

# Example usage:
if __name__ == "__main__":
    unsorted_list = [64, 34, 25, 12, 22, 11, 90]
    sorted_list = selection_sort(unsorted_list)
    print("Sorted list using Selection Sort:", sorted_list)
