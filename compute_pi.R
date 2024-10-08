# Number of random points to generate
num_points <- 5000000

# Use ~2GB -- we're only doing this to see what happens when we allocate more than requested.
big_waste = matrix(0, 16000, 16000)

# Estimate Pi using Monte Carlo simulation
inside_circle <- 0
for (i in 1:num_points) {
    x <- runif(1, 0, 1) # Generate random x-coordinate
    y <- runif(1, 0, 1) # Generate random y-coordinate

    # Check if the point is inside the quarter-circle
    if (x^2 + y^2 <= 1) {
        inside_circle <- inside_circle + 1
    }
}

# Estimate Pi
pi_estimate <- 4 * inside_circle / num_points
cat("Estimated Pi:", pi_estimate, "\n")
