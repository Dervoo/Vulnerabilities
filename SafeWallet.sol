contract SafeWallet {
    address public owner;
    uint public balance;
    bool public lock;

    function SafeWallet() public {
        owner = msg.sender;
        balance = 0;
        lock = false;
    }

    function deposit() public payable {
        balance += msg.value;
    }

    function withdraw(uint amount) public {
        require(!lock, "Contract is locked");
        lock = true;
        require(amount <= balance, "Not enough funds");
        msg.sender.transfer(amount);
        balance -= amount;
        lock = false;
    }
}