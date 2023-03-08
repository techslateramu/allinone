def is_palindrome(string):
    """
    Returns True if the given string is a palindrome, and False otherwise.
    """
    # Convert string to lowercase to make the comparison case-insensitive
    string = string.lower()
    
    # Remove all non-alphanumeric characters from the string
    string = ''.join(filter(str.isalnum, string))
    
    # Compare the string with its reverse
    return string == string[::-1]

# Example usage
print(is_palindrome("A man, a plan, a canal: Panama"))  # True
print(is_palindrome("race a car"))  # False
