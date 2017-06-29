# WWCTipCalculator2
Adding the functionality of our tip calculator

Things to consider: Data types!
Labels display strings
Ints, Floats, and Doubles
Math problems must take inputs that match data types and will return the same data type.
For example
let firstInt: Int = 5
let secondInt: Int = 2
firstInt/secondInt will give int of 2


Logic:

1. All keypads get a tag, keys 0-9 get tags 0-9.

2. The top label displays *bill*, which is a string built by user pressing a keypad buttons.
* Begin *bill* as "0".
* For tags 0-9, when the user presses a keypad, if *bill* is "0", change *bill* to that tags. If *bill* is not "0", append that tag.
* Special case: Decimal point - Decimal point is appended to *bill* and the button should then be disabled.
* Special case: Clear button - *bill* is reset to "0" and the decimal point is enabled.

3. Upon each keypad press, calculate the tip for 10%, 15%, and 20% and the total amount to pay.
* Cast the *bill* string to *numberBill*, a Double (or a Float).
* Calculate tip amounts by multiplying *numberBill* by 0.10, 0.15, and 0.20.
* Calculate the total amounts to pay by adding the tip amounts to *numberBill*.
* Cast the calculated tip amounts and total amounts into strings and format to only show two decimal points.
* Use the strings of the calculated tip amounts and total amounts to update the corresponding labels.
