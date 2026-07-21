# Simpson's 1/3 Rule
## Overview
Simpson's 1/3 Rule is a numerical integration method that approximates the value of a definite integral by fitting a second-degree (quadratic) polynomial through consecutive data points. It generally provides higher accuracy than the Trapezoidal Rule for smooth functions.

## Objective
* Approximate definite integrals using Simpson's 1/3 Rule.
* Compare numerical integration results with analytical solutions.
* Implement the algorithm using GNU Octave/MATLAB.

## Algorithm
1. Define the function and integration interval.
2. Divide the interval into an even number of subintervals.
3. Evaluate the function at each point.
4. Apply Simpson's 1/3 formula.
5. Compute the approximate integral.

## Input
* Function
* Lower limit
* Upper limit
* Even number of subintervals

## Output
* Approximate integral
* Numerical error (if exact solution is available)

## Applications
* Engineering analysis
* Physics simulations
* Scientific computing
* Numerical integration of smooth functions

## Software
* GNU Octave
* MATLAB Compatible

## Learning Outcome
Understand quadratic interpolation for numerical integration and evaluate its accuracy compared to other integration methods.
