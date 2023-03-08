# Function to generate Fibonacci series up to a given number
def fibonacci_series(n):
    # Initialize the first two terms
    a, b = 0, 1
    
    # Create an empty list to store the series
    series = []
    
    # Loop until the next term in the series is greater than n
    while b <= n:
        # Add the current term to the series
        series.append(b)
        
        # Update the terms for the next iteration
        a, b = b, a + b
    
    # Return the series
    return series

# Get the user input
n = int(input("Enter a number: "))

# Call the function to generate the series
series = fibonacci_series(n)

# Print the series
print("Fibonacci series up to", n, ":", series)
