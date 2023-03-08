def merge_sort(arr):
    if len(arr) <= 1:
        return arr

    # divide the array in half
    mid = len(arr) // 2
    left_half = arr[:mid]
    right_half = arr[mid:]

    # sort the left and right halves recursively
    left_half = merge_sort(left_half)
    right_half = merge_sort(right_half)

    # merge the sorted halves
    return merge(left_half, right_half)

def merge(left_half, right_half):
    result = []
    i = 0
    j = 0
    while i < len(left_half) and j < len(right_half):
        if left_half[i] < right_half[j]:
            result.append(left_half[i])
            i += 1
        else:
            result.append(right_half[j])
            j += 1

    result += left_half[i:]
    result += right_half[j:]

    return result

my_list = [5, 2, 9, 1, 5, 6]
sorted_list = merge_sort(my_list)
print(sorted_list)
