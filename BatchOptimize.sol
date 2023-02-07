pragma solidity ^0.8.0;

/// @dev multiple values can be added to the values array 
/// @dev in a single transaction, reducing the overhead cost 
/// @dev associated with multiple transactions.

contract BatchOptimize {
    uint256[] values;

    function add(uint256[] memory _values) public {
        values.push(_values);
    }
}

/// @dev https://ethereum.org/en/developers/docs/evm/opcodes/