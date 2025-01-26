# Dart Null Safety Gotcha with Getters and Default Values

This example demonstrates a potential runtime error when using nullable variables and getters with default values in Dart.  The issue arises when attempting to access the getter of a null object.

## Problem:

A getter with a default value handles cases where the underlying variable is null. However, if the object itself is null, accessing the getter still throws a null check error. 

## Solution:

To fix this problem, check for null before accessing the getter or use the null-aware operator (?.) to access the property safely. The solution in `bugSolution.dart` implements this approach.
