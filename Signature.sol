pragma solidity >=0.5.0 <0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/cryptography/ECDSA.sol";


/// @dev Digital Signatures: Digital signatures are mathematical 
/// @dev algorithms that provide authenticity and non-repudiation 
/// @dev for digital messages. In smart contracts, digital 
/// @dev signatures are often used to verify the identity 
/// @dev of a sender, to authorize a transaction, or to 
/// @dev verify the integrity of stored data.
contract Signature {
    function verifySignature(bytes32 hash, uint8 v, bytes32 r, bytes32 s) public view returns (address) {
        return ECDSA.verifySignature(hash, v, r, s);
    }
}
