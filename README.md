# ETH-AVAX_Mod3Project: Create, Mint, Burn and Transfer Token
This project consists of a smart contract project that allows users to create, mint, burn, and transfer tokens.


## Description
This project was made in compliance with the requirements of my ETH+AVAX Metacrafters course. The project consists of a smart contract project that creates a token that the user can then mint, burn, or transfer to others.

The code uses require() to limit functionality to specific, permitted individuals or conditions.

- mint() is limited only to the address of the user who created/deployed the contract.
- burn() and transfer() have the requirement `balances[msg.sender] >= _value`.


## How/where to download your program
You can download the program directly from GitHub via the download button in the upper right.


## Executing program
This program can be run using the website Remix linked here: https://remix.ethereum.org/


## How to run the program
- Within Remix, create a new.sol file and paste the code into it.
- To run the program by clicking the "Deploy & Run Transactions" button.
- Make sure to deploy the contract that contains this code.
- After this, you will be able to interact with the functions and call on the variables.

## Author
Erin Beatrice Micaela G. Reyes

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/YumenoRetort/ETH-AVAX_Mod3Project/blob/main/LICENSE) file for details.
