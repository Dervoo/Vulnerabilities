pragma solidity ^0.8.0;

/// @dev the value of value is stored in a cache, 
/// @dev reducing the gas cost associated with reading and 
/// @dev writing data to the blockchain.

contract Caching {
    uint256 value;
    mapping(uint256 => uint256) cache;

    function setValue(uint256 _value) public {
        value = _value;
        cache[value] = value;
    }

    function getValue() public view returns (uint256) {
        return cache[value];
    }
}

/// @dev https://ethereum.org/en/developers/docs/evm/opcodes/