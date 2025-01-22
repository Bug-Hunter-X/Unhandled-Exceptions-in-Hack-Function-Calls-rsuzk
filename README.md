# Unhandled Exceptions in Hack Function Calls

This repository demonstrates a common error in Hack: unhandled exceptions in function calls.  The `bug.hack` file contains code that will fail if the called function throws an exception.  The `bugSolution.hack` file shows how to properly handle such exceptions using try-catch blocks.

## Problem

In Hack, if a function call throws an exception and that exception is not caught, the program will terminate unexpectedly. This is especially problematic when functions are nested, as the calling function might not be aware of potential exceptions thrown by the called function.

## Solution

The solution is to use try-catch blocks to wrap potentially error-prone function calls. This ensures that if an exception occurs, the program can handle it gracefully, preventing unexpected termination.

## How to reproduce

1. Clone this repository.
2. Compile and run `bug.hack`. You will see the program crash.
3. Compile and run `bugSolution.hack`. You will see that the exception is handled, and the program continues to run without crashing.