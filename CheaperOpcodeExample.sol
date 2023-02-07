pragma solidity ^0.8.0;

 /// @dev addLessIntensive function uses the ++ operator to 
 /// @dev increment the length of the values array and add 
 /// @dev the new value, which is less gas-intensive than 
 /// @dev using the push function in the add function.

contract CheaperOpcodeExample {
    uint256[] values;

    function add(uint256 _value) public {
        values.push(_value);
    }

    function addLessIntensive(uint256 _value) public {
        values[values.length++] = _value;
    }
}

/// @dev https://ethereum.org/en/developers/docs/evm/opcodes/