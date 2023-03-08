def factorial(n):
    """
    Compute the factorial of n.
    """
    if n < 0:
        return None
    elif n == 0:
        return 1
    else:
        return n * factorial(n-1)

n = 4
print(factorial(n))