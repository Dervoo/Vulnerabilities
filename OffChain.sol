pragma solidity ^0.8.0;

/// @dev the doubleValue function can be used to 
/// @dev retrieve the doubled value of value off-chain, 
/// @dev reducing the gas cost associated with performing 
/// @dev the computation on-chain.

contract OffChain {
    uint256 value;

    function setValue(uint256 _value) public {
        value = _value;
    }

    function doubleValue() public view returns (uint256) {
        return value * 2;
    }
}

/// @dev https://ethereum.org/en/developers/docs/evm/opcodes/