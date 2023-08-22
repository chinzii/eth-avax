// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

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
