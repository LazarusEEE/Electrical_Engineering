# False Position Method (Regula Falsi)
## Overview

The False Position Method is a numerical root-finding method that improves the Bisection Method by using linear interpolation between two points.

## Objective
* Solve nonlinear equations numerically.
* Implement the Regula Falsi algorithm.
* Compare convergence behavior with other root-finding methods.

## Algorithm
1. Select two points `a` and `b`.

2. Ensure:

   `f(a) × f(b) < 0`

3. Calculate:

   `c = (a*f(b)-b*f(a))/(f(b)-f(a))`

4. Evaluate `f(c)`.

5. Update the interval.

6. Repeat until convergence.

## Input

* Function equation
* Initial interval
* Tolerance
* Iteration limit

## Output
* Estimated root
* Iteration table
* Error value

## Software
* GNU Octave
* MATLAB Compatible

## Learning Outcome
Learned interpolation-based root approximation and convergence analysis.
