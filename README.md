# VendingMachine

This Solidity program is a simple smart contract simulating a vending machine. It demonstrates key Solidity control structures (`require`, `assert`, and `revert`) while allowing users to deposit credits, purchase items, and check balance integrity.

## Description

The `VendingMachine` contract includes the following functionalities:

- **Public Balance Variable**: Tracks the user's current balance.
- **`deposit` Function (using `require`)**: Accepts a deposit amount, ensuring the amount is greater than zero using `require`.
- **`purchaseItem` Function (using `require`)**: Allows users to purchase items, ensuring they have sufficient balance and the item count is valid.
- **`checkBalance` Function (using `assert`)**: Ensures that the `balance` remains non-negative, highlighting the logical integrity of the contract.
- **`resetMachine` Function (using `revert`)**: Demonstrates the `revert` statement by intentionally triggering a contract reset when requested.

This contract is an excellent starting point for learning how to implement essential control statements in Solidity.

---

## Getting Started

### Prerequisites
To use this contract, you will need:
- [Remix IDE](https://remix.ethereum.org/) or another Solidity-compatible development environment.
- Basic knowledge of Solidity and blockchain concepts.

### Running the Contract
1. Open [Remix IDE](https://remix.ethereum.org/) and create a new file with the `.sol` extension (e.g., `VendingMachine.sol`).
2. Copy the contract code into the file.
3. In the **Solidity Compiler** tab, select the compiler version `0.8.18` and click **Compile VendingMachine.sol**.
4. Go to the **Deploy & Run Transactions** tab, deploy the `VendingMachine` contract, and start interacting with its functions.

---

## Interacting with the Contract

### Deposit
- **Function**: `deposit(uint amount)`
- Use this function to add credits to the vending machine.
- The `amount` must be greater than zero. If not, the transaction will revert with an error.

### Purchase Item
- **Function**: `purchaseItem(uint itemCount)`
- Use this function to purchase items from the vending machine.
- The `itemCount` must be greater than zero, and your `balance` must be sufficient to cover the total cost (item price × item count).

### Check Balance
- **Function**: `checkBalance()`
- This is a read-only function that ensures the `balance` is non-negative.
- If the `balance` is ever negative due to a logical error, the function will throw an error.

### Reset Machine
- **Function**: `resetMachine(bool reset)`
- Call this function with `true` to trigger a reset. The function demonstrates the use of `revert` to halt execution under specific conditions.

---

## Authors

Moira Gabrielle L. Radam  
4th-year student at Far Eastern University of Technology  
