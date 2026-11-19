
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


## Part 2: What does ~/ do?

The ~/ operator performs integer division. It divides two numbers and returns only the whole number without the decimal part.

For example:
- 237 * 17 / 100 = 40.29
- 237 * 17 ~/ 100 = 40

We use ~/ to calculate the student discount as a whole number.

## Output of main.dart

```text
Error: name too short
Owner: Nafisa | Balance: 1040 RWF
Owner: Nafisa Ahmed Hassan Musa | Balance: 1040 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 204 RWF
Paid 204 RWF
Owner: Nafisa Ahmed Hassan Musa | Balance: 2632 RWF
Student discount: 28 RWF
Paid 176 RWF
Owner: Nafisa Ahmed Hassan Musa | Balance: 864 RWF
Student card: 14% off
```
