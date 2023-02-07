pragma solidity >=0.5.0 <0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/cryptography/AES.sol";


/// @dev Encryption is the process of converting plaintext into 
/// @dev ciphertext (unreadable text) in order to protect the 
/// @dev confidentiality of information. In smart contracts, 
/// @dev encryption is often used to store sensitive data, 
/// @dev such as private keys or encrypted messages.

contract Example {
    function encrypt(bytes plaintext, bytes key) public pure returns (bytes) {
        return AES.encrypt(plaintext, key);
    }

    function decrypt(bytes ciphertext, bytes key) public pure returns (bytes) {
        return AES.decrypt(ciphertext, key);
    }
}
