
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



## Part 4: Bug Hunt

I found and fixed five bugs in the original code.

| Bug | Line | Why it is wrong | Fix |
|---|---|---|---|
| Field initialization | 2–3 | The fields `_brand` and `_battery` were not initialized. | I gave them initial values: `''` and `0`. |
| Parent constructor | 18 | The SmartPhone constructor did not call the Phone constructor. | I added `: super(brand, battery)`. |
| Incorrect override | 22 | The `restart()` method was marked with `@override`, but Phone has no restart method. | I removed `@override`. |
| Missing setter | 30 | The code tried to change `p.battery`, but there was no setter. | I added a setter that accepts values between 0 and 100. |
| Getter called like a method | 31 | `p.battery()` was incorrect because battery is a getter. | I changed it to `p.battery`. |

### A line that looks wrong but is correct

Line 29: `Phone p = new Phone('Tecno', 50);`

The `new` keyword may look unnecessary, but it is correct. Dart allows us to use `new` when creating an object. It is optional, not an error.

### Output of bug_hunt.dart

```text
100
```


## Part 5: Predict the Output

### My prediction

I predict that the program will print:

```text
1
5
```

### Explanation

- The first output is 1 because `a.add()` increases the items by one. The assignment of -5 is ignored because the setter only accepts values greater than or equal to zero.
- The second output is 5 because each call to `b.add()` increases the items by two. After two calls, the value is 4. Then one more item is added, making it 5.
