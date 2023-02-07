/// @dev Reentrancy is a potential security vulnerability in smart 
/// @dev contracts that occurs when a contract calls another 
/// @dev contract and the called contract then calls back into 
/// @dev the original contract before it has finished executing. 
/// @dev This can result in unexpected behavior and can be exploited 
/// @dev to steal funds from the original contract.

contract VulnerableWalletReentrancy {
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

contract Attack {
    Wallet public target;

    function Attack(address _target) public {
        target = Wallet(_target);
    }

    function executeAttack() public {
        uint amount = target.balance();
        target.withdraw(amount);
        target.deposit.value(amount)();
    }
}