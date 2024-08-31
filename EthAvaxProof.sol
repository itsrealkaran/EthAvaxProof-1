// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ErrorHandling {

    // State variable to store a number
    uint public number;

    // Function to set a number
    function setNumber(uint _number) public {
        // Using require() to validate input
        require(_number > 0, "Number must be greater than zero.");
        number = _number;
    }

    // Function to divide a number by another number
    function divide(uint a, uint b) public pure returns (uint) {
        // Using require() to ensure denominator is not zero
        require(b != 0, "Denominator cannot be zero.");
        return a / b;
    }

    // Function to demonstrate assert()
    function checkNumber() public view {
        // Using assert() to check for internal errors
        // This should never fail if setNumber works correctly
        assert(number > 0);
    }

    // Function to reset the number with condition
    function resetNumber(uint _number) public {
        if (_number == 0) {
            // Using revert() to revert the transaction with a custom error message
            revert("Number cannot be reset to zero.");
        }
        number = _number;
    }
}
