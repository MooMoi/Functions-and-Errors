pragma solidity 0.8.18;

contract SimpleContract {
    uint public balance;

    // Function that uses require() to check an input condition
    function deposit(uint amount) public {
        require(amount > 0, "Amount must be greater than zero"); // Only accept positive deposits
        balance += amount;
    }

    // Function to check that balance is never negative
    function checkBalance() public view {
        assert(balance >= 0);
    }

    // Function that demonstrates revert
    function incrementBalance(bool stopIncrement) public {
        if (stopIncrement) {
            revert("Increment operation was stopped intentionally"); // Reverts if stopIncrement is true
        }
        // Increase balance as a simple operation if no revert
        balance += 1;
    }
}
