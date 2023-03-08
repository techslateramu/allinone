def bubble_sort(nums):
    # Get the length of the list
    n = len(nums)

    # Loop through each element of the list
    for i in range(n):
        # Last i elements are already sorted
        for j in range(0, n - i - 1):
            # Swap if the element found is greater than the next element
            if nums[j] > nums[j + 1]:
                nums[j], nums[j + 1] = nums[j + 1], nums[j]

# Example usage
numbers = [3, 6, 2, 8, 1, 9, 4, 7, 5]
bubble_sort(numbers)
print(numbers)