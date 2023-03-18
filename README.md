# Flash loan 

Compile, and migrate a aave flash loan using Truffle Suite.

* The contract is in `src/contracts`.
* The Truffle configuration (especially the `solc` compiler version) is `truffle-config.js`
* Truffle runs in a Docker image

## How to compile

1. Build image: `docker build -t truffle .`

2. Launch Truffle compilation: `docker run --rm -it -v $(pwd)/src:/src truffle truffle compile`

3. [TODO] Launch Truffle migrations: `docker run --rm -it -v $(pwd)/src:/src truffle truffle migrate`
