pragma solidity 0.8.18;

contract VendingMachine {
    uint public balance; // Tracks the user's balance
    uint public itemPrice = 2; // Fixed price for an item

    // Deposit credits to the vending machine
    function deposit(uint amount) public {
        require(amount > 0, "Deposit amount must be greater than zero"); // Ensure positive deposits
        balance += amount;
    }

    // Purchase an item from the vending machine
    function purchaseItem(uint itemCount) public {
        uint totalCost = itemPrice * itemCount;
        require(itemCount > 0, "You must buy at least one item"); // Valid item count
        require(balance >= totalCost, "Insufficient balance for the purchase"); // Ensure enough balance
        balance -= totalCost; // Deduct the total cost from balance
    }

    // Check if the balance is never negative (using assert)
    function checkBalance() public view {
        assert(balance >= 0); // Assert ensures no logical errors reduce balance below zero
    }

    // Reset the machine (example of revert usage)
    function resetMachine(bool reset) public {
        if (reset) {
            revert("Machine reset was triggered intentionally"); // Reverts if reset is requested
        }
    }
}
