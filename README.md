# Jupiter Token Crowdsale


## Requirements

- **[node.js](https://nodejs.org)** 10.x or higher
- **[geth](https://github.com/ethereum/go-ethereum)** or **[ganache](https://truffleframework.com/ganache)**


## Setup

1. Get the source-code

	- **`git clone https://github.com/JupiterChain/crowdsale`**
	- **`cd crowdsale`**

2. Install truffle and ganache-cli (optional)

	 **`npm install -g truffle ganache-cli`**
	 
3. Run **`npm install`**
4. Happy coding!

> Make sure to run **`truffle compile`** every time you make changes


## Run Local Node

- Using **ganache**

	`$ ganache-cli`

- Or **geth**

	**`geth --testnet --fast --rpc --rpcapi db,eth,net,web3,personal --unlock 0xabc123...`**


## Deployment

> Make sure you have a local node running with a default unlocked account.
> 
> See **`truffle.js`** for available network configurations

1. Run migration

	**`$ DEFAULT_ACCOUNT=<default unlocked account address> truffle migrate --network <network name>`**
	
2. Test contracts in console

	**`$ truffle console --network <nework name>`**

