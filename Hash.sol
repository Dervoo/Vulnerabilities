pragma solidity >=0.5.0 <0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/math/SafeMath.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/cryptography/SHA3.sol";


/// @dev Hash Functions: Hash functions are mathematical algorithms 
/// @dev that take an input and produce a fixed-length output 
/// @dev (also known as a hash or digest) that represents the input 
/// @dev data. Hash functions are used to ensure the integrity of data, 
/// @dev as any changes to the input data result in a completely different 
/// @dev hash. In smart contracts, hash functions are often used to 
/// @dev implement secure random number generators, to verify the 
/// @dev integrity of stored data, or to create unique identifiers 
/// @dev for transactions.
contract Hash {
    using SafeMath for uint256;
    using SHA3 for bytes32;

    function generateHash(uint256 seed) public pure returns (bytes32) {
        return sha3(abi.encodePacked(seed));
    }
}