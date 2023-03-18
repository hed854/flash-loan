var FlashLoan = artifacts.require(
    "https://github.com/aave/aave-v3-core/blob/master/contracts/protocol/configuration/PoolAddressesProvider.sol",
    "https://github.com/aave/aave-v3-core/blob/master/contracts/interfaces/IPool.sol",
    "https://github.com/aave/aave-v3-core/blob/master/contracts/flashloan/base/FlashLoanReceiverBase.sol",
    "./contracts/FlashLoan.sol",
);

module.exports = function(deployer) {
    deployer.deploy(FlashLoan);
}
