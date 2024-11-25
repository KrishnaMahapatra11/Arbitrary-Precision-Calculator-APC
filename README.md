Arbitrary Precision Calculator (APC)

Overview

The **Arbitrary Precision Calculator (APC)** is a C-based application designed to handle arithmetic operations on numbers of arbitrary length using big-num arithmetic. It leverages **arbitrary-precision arithmetic**, enabling calculations beyond the limitations of fixed-precision arithmetic typically found in standard hardware.

---

Features

- Supports **addition (+)**, **subtraction (-)**, **multiplication (*)**, **division (/)**, **modulus (%)**, and **power (^)** operations.
- Handles both **integer numbers** and **numbers with decimal points**.
- Processes numbers of virtually unlimited precision, constrained only by the system's available memory.
- Implements a **double linked list** to store and manipulate digits efficiently.
- Includes optimizations for edge cases (e.g., handling zeros and carry propagation).

---

Applications

- **Public-key cryptography**: Algorithms requiring operations on integers with hundreds or thousands of digits.
- **Mathematical computations**: Calculation of constants like π to millions of digits.
- **Scientific computations**: Handling large-scale numerical problems with high precision.

---

Prerequisites

To understand and contribute to this project, familiarity with the following is essential:

- Pointers and structures in C
- Dynamic memory handling
- Double linked lists

---



Operations

Each arithmetic operation is implemented as a function. Below are the prototypes:

- Addition:
  ```c
  int addition(Dlist **head1, Dlist **tail1, Dlist **head2, Dlist **tail2, Dlist **headR);
  ```
- Subtraction:
  ```c
  int subtraction(Dlist **head1, Dlist **tail1, Dlist **head2, Dlist **tail2, Dlist **headR);
  ```
- Multiplication:
  ```c
  int multiplication(Dlist **head1, Dlist **tail1, Dlist **head2, Dlist **tail2, Dlist **headR);
  ```
- Division:
  ```c
  int division(Dlist **head1, Dlist **tail1, Dlist **head2, Dlist **tail2, Dlist **headR);
  ```

Each function returns a status code (`SUCCESS` or `FAILURE`) and accepts pointers to the head and tail of the operand linked lists.


