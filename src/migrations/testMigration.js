var FlashLoan = artifacts.require(
    "./contracts/FlashLoan.sol",
);

module.exports = function(deployer) {
    deployer.deploy(FlashLoan);
}
