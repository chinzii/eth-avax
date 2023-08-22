# Error Handling

It's a simple solidity program about error handling using require(), assert() & revert().

## Description

The ExceptionHandling contract demonstrates the usage of require(), assert() and revert() statements. It includes three functions: setValue(), incrementValue(), and decrementValue(). The setValue() function validates that the input _newValue is greater than zero before updating the value variable. The incrementValue() function validates the invariant that the newValue, calculated by adding _increment to the current value, must be greater than the previous value. The decrementValue() function checks if there's enough value to decrement and reverts the transaction with a custom error message if the condition fails.

## Getting Started

### Executing program

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract ExceptionHandling {
    uint public value;
    
    function setValue(uint _newValue) public {
        // Using require() to validate a condition
        require(_newValue > 0, "Value must be greater than zero.");
        
        value = _newValue;
    }
    
    function incrementValue(uint _increment) public {
        // Using assert() to validate an invariant
        uint newValue = value + _increment;
        assert(newValue > value);
        
        value = newValue;
    }
    
    function decrementValue(uint _decrement) public {
        // Using revert() to explicitly revert the transaction
        require(value >= _decrement, "Insufficient value to decrement.");
        
        value -= _decrement;
        
        // Revert the transaction with a custom error message
        revert("Transaction reverted due to custom error message.");
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.16" (or higher version), and then click on the "Compile Errors.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Errors" contract from the dropdown menu, and then click on the "Deploy" button.

You can interact with the contract by calling the functions setValue(), incrementValue() and decrementValue() and pass the values as arguments in the function once the contract is deployed. Click on the "value" to see the current value of the variable.
