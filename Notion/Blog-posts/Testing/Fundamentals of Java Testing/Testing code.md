## Introduction

- Quality and reliability
- Meeting functional requirements
- Remove fear of change

## Components of a test

- Given. Preconditions. What state should your system be in when the behavior happens?
- When. The behavior. What is being tested?
- Then. The postcondition. What are the changes that happened

## Exceptions, Failures, and Errors

Sometimes, an exception is the correct result!

### Why test Exceptions?

They provide an executable form of documentation

### Failures vs. Errors

Failure

- Tried to check behavior
- An assertion failed
- The code is probably broken

Error

- At any point in the test
- A non-assert exception was thrown
- The test is probably broken