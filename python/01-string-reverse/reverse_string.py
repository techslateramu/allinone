def reverse_string(string):
    """
    This function takes a string as input and returns the reverse of the string
    """
    # Initialize an empty string
    reversed_string = ""
    
    # Loop through the string in reverse order
    for i in range(len(string)-1, -1, -1):
        # Add each character to the reversed string
        reversed_string += string[i]
    
    return reversed_string

# Example usage
print(reverse_string("hello"))  # Output: "olleh"
print(reverse_string("world"))  # Output: "dlrow"
