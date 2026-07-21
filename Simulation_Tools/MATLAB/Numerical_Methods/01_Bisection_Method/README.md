# Bisection Method
## Overview

The Bisection Method is a numerical root-finding technique used to find the solution of nonlinear equations. It is based on the Intermediate Value Theorem and repeatedly divides an interval into two halves to locate the root.

## Objective
* Find the root of a nonlinear equation.
* Implement the bisection algorithm using GNU Octave/MATLAB.
* Understand iterative numerical approximation.

## Algorithm
1. Define the function `f(x)`.

2. Select two initial points `a` and `b` where:

   `f(a) × f(b) < 0`

3. Calculate midpoint:

   `c = (a + b) / 2`

4. Check the sign of `f(c)`.

5. Replace the interval containing the root.

6. Repeat until the required accuracy is achieved.

## Input
* Nonlinear equation
* Initial interval
* Tolerance value
* Maximum number of iterations

## Output
* Approximated root
* Number of iterations
* Error analysis

## Software
* GNU Octave
* MATLAB Compatible

## Learning Outcome
Understanding of iterative root-solving techniques and numerical error reduction.
