# SimpleContract

This Solidity program is a basic contract demonstrating the use of `require`, `assert`, and `revert` statements. The `SimpleContract` allows users to deposit amounts, check balance integrity, and increment the balance under certain conditions, serving as a straightforward example of control statements in Solidity.

## Description

The `SimpleContract` includes the following functionalities:

- **Public Balance Variable**: Keeps track of a simple balance, which is visible to any user.
- **`deposit` Function (using `require`)**: Accepts a positive deposit amount, using `require` to validate that the deposit amount is greater than zero.
- **`checkBalance` Function (using `assert`)**: Ensures that the `balance` is always non-negative. The `assert` statement verifies that no unintended state changes have made the balance negative.
- **`incrementBalance` Function (using `revert`)**: Demonstrates the `revert` statement by allowing a conditional stop to the increment operation if a specific condition is met.

This contract is ideal for anyone looking to understand the practical uses of `require`, `assert`, and `revert` in a Solidity smart contract.

## Getting Started

### Prerequisites
To work with this contract, you will need:
- [Remix IDE](https://remix.ethereum.org/) or another Solidity development environment.
- Basic knowledge of Solidity and smart contract deployment.

### Running the Contract
To run this contract, you can use Remix, an online Solidity IDE. 

1. Go to the Remix website and create a new file with a `.sol` extension (e.g., `SimpleContract.sol`).
2. Copy and paste the contract code into the file.
3. Go to the **Solidity Compiler** tab, ensure the compiler version is set to `0.8.18`, and click **Compile SimpleContract.sol**.
4. After compiling, go to the **Deploy & Run Transactions** tab, select the `SimpleContract`, and click **Deploy**.

### Interacting with the Contract

- **Deposit**: Call the `deposit` function with a positive integer to add that amount to the balance. If you try to deposit `0` or a negative amount, the function will revert with an error message.
- **Check Balance**: Use `checkBalance` to ensure the balance is non-negative. If, in any unexpected case, the balance is negative, an error will be thrown, helping detect issues.
- **Increment Balance**: Call `incrementBalance` with `false` to increase the balance by 1. If you call it with `true`, the operation will stop and the balance will not change, demonstrating the `revert` statement in action.

## Authors

Moira Gabrielle L. Radam | 4th-year student from Far Eastern University of Technology
