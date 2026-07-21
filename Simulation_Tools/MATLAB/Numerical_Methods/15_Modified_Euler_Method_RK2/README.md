# Modified Euler Method (Heun Method / RK2)
## Overview

The Modified Euler Method, also known as Heun's Method or the Second-Order Runge-Kutta (RK2) Method, improves the accuracy of the standard Euler Method by averaging the slopes at the beginning and the end of each step.

## Objective
* Improve numerical solutions of ordinary differential equations.
* Compare the accuracy of Euler and Modified Euler methods.
* Implement the RK2 algorithm using GNU Octave/MATLAB.

## Algorithm
1. Define the differential equation.
2. Specify the initial condition.
3. Compute the predictor using Euler's Method.
4. Calculate the corrected slope.
5. Compute the next solution using the average slope.
6. Continue until the required interval is completed.

## Input
* Differential equation
* Initial condition
* Step size
* Final value of the independent variable

## Output
* Numerical solution
* Solution table
* Graphical representation
* Approximation error

## Applications
* Engineering simulations
* Mechanical systems
* Electrical engineering analysis
* Scientific computing

## Software
* GNU Octave
* MATLAB Compatible

## Learning Outcome
Understand higher-order numerical methods for solving differential equations and evaluate improvements in solution accuracy over the standard Euler Method.
