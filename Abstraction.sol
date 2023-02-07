pragma solidity ^0.8.0;

/// @dev the Math library is used to abstract the 
/// @dev low-level details of adding value and _value into 
/// @dev a library, reducing the overall gas cost of the 
/// @dev Abstraction contract. The library can be reused 
/// @dev across multiple contracts, further reducing gas costs.

library Math {
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}

contract Abstraction {
    uint256 value;

    function setValue(uint256 _value) public {
        value = Math.add(value, _value);
    }
}

/// @dev https://ethereum.org/en/developers/docs/evm/opcodes/