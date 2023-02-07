Internal: Functions declared as internal can only be called from within the contract. They are not accessible from outside the contract.

External: Functions declared as external can be called from other contracts or from outside the contract. They are meant to be used for interacting with the contract.

Public: Functions declared as public can be called from other contracts or from outside the contract. They are also stored in the contract’s storage, so their values can be accessed by reading the blockchain.

Private: Functions declared as private can only be called from within the contract. They are not accessible from other contracts or from outside the contract, and their values are not stored in the contract’s storage.