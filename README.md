
# Dart OOP Assignment: Kigali Bus Card

**Name:** Nafisa Ahmed Hassan Musa  
**Student ID:** 25904

## My numbers
- D = 04
- L = 4
- Starting balance = 1040 RWF
- Bus fare = 204 RWF
- Student discount = 14%

## Part 1: Why no setter for balance?

There is no setter for balance because we should not allow anyone to change the balance directly.

The balance should only change through the topUp() and pay() methods. These methods check the rules before updating the balance. This helps prevent incorrect balance changes.
