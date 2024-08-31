# ErrorHandling Solidity Contract

## Overview

The `ErrorHandling` contract is a Solidity smart contract designed to demonstrate various methods of error handling in Solidity, including `require`, `assert`, and `revert`. This contract provides functions to set, divide, check, and reset a number with appropriate validation and error handling.

## Features

1. **State Variable**: Stores a single unsigned integer (`number`).
2. **Set Number**: Sets a value to the `number` variable with validation.
3. **Division**: Divides two numbers with a check to prevent division by zero.
4. **Check Number**: Validates the state of the `number` variable using assertions.
5. **Reset Number**: Resets the `number` variable with validation to prevent it from being set to zero.

## Contract Details

### Public Variables

- `number`: An unsigned integer (`uint`) that stores a value. It is publicly accessible.

### Functions

#### setNumber

```
function setNumber(uint _number) public
```

- **Description**: Sets the value of the `number` variable.
- **Parameters**:
  - `_number`: The new value to set for `number`.
- **Functionality**:
  - Uses `require` to ensure `_number` is greater than zero. If the condition is not met, it reverts the transaction with the message "Number must be greater than zero."
  - Sets the `number` state variable to `_number`.

#### divide

```
function divide(uint a, uint b) public pure returns (uint)
```

- **Description**: Divides one number by another.
- **Parameters**:
  - `a`: The numerator.
  - `b`: The denominator.
- **Functionality**:
  - Uses `require` to ensure `b` (denominator) is not zero. If `b` is zero, it reverts the transaction with the message "Denominator cannot be zero."
  - Returns the result of the division `a / b`.

#### checkNumber

```
function checkNumber() public view
```

- **Description**: Validates that the `number` variable is greater than zero.
- **Functionality**:
  - Uses `assert` to ensure that the `number` is greater than zero. If `assert` fails, it indicates a critical issue in the contract state.

#### resetNumber

```
function resetNumber(uint _number) public
```

- **Description**: Resets the value of the `number` variable.
- **Parameters**:
  - `_number`: The new value to set for `number`.
- **Functionality**:
  - Uses `revert` to prevent the `number` from being reset to zero. If `_number` is zero, the transaction is reverted with the message "Number cannot be reset to zero."
  - Sets the `number` state variable to `_number` if the value is not zero.

## Usage

1. **Deploy the Contract**: Deploy the `ErrorHandling` contract to the Ethereum blockchain using your preferred development environment (e.g., Remix, Truffle).
2. **Set Number**: Use the `setNumber` function to assign a positive value to `number`.
3. **Divide Numbers**: Use the `divide` function to safely perform division operations.
4. **Check Number**: Call `checkNumber` to ensure that `number` is positive.
5. **Reset Number**: Use the `resetNumber` function to set a new value to `number`, ensuring it is not zero.

## Example

```
// Deploy the contract
ErrorHandling errorHandling = new ErrorHandling();

// Set the number to 10
errorHandling.setNumber(10);

// Divide 20 by 5
uint result = errorHandling.divide(20, 5); // result should be 4

// Check that the number is greater than zero
errorHandling.checkNumber(); // Should not throw an error if number is valid

// Attempt to reset number to zero (this will fail)
errorHandling.resetNumber(0); // Reverts with "Number cannot be reset to zero."

// Reset the number to 25
errorHandling.resetNumber(25);
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
