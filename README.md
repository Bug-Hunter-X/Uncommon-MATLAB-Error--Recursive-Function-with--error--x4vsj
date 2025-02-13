# Uncommon MATLAB Error: Recursive Function with 'error'

This repository demonstrates an uncommon error in MATLAB that can occur when using the `error` function within a recursively called function.

## The Problem

The `error` function in MATLAB is typically used for handling runtime errors and raising exceptions.  However, if used within a function that calls itself recursively, and the recursive calls lead to repeated `error` calls, it can result in unusual behavior, such as unexpected termination or stack overflow crashes, especially if the recursion depth is not managed properly.

The `bug.m` file shows this problem.  The `myFunction` recursively calls itself; if the input is negative, the `error` function throws an exception.  If this occurs within multiple recursive calls, a significant stack overflow could occur. 

## The Solution

The `bugSolution.m` file demonstrates a solution to handle the problem.  The primary solution involves using `try-catch` blocks to manage errors gracefully instead of relying on the `error` function to abruptly stop execution. This strategy ensures the error is handled without causing a stack overflow.