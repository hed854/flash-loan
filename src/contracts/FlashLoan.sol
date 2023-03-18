// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// AAVE is a Defi Protocol designed to facilitate financial operations on the Ethereum network
// - permissionless (ex: listing pairs, etc) => less data, so it's cheaper in gas
// - easy borrowing

import {PoolAddressesProvider} from "@aave/core-v3/contracts/protocol/configuration/PoolAddressesProvider.sol";
import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";
import {FlashLoanReceiverBase} from "@aave/core-v3/contracts/flashloan/base/FlashLoanReceiverBase.sol";

contract FlashLoan is FlashLoanReceiverBase {
    PoolAddressesProvider provider;
    address dai; //the address of the dai provider

    constructor(address _provider, address _dai) FlashLoanReceiverBase(_provider)  public {
        provider = PoolAddressesProvider(_provider);
        dai = _dai;
    }

    function startLoan(uint amount, bytes calldata _params) external {
        IPool lendingPool = IPool(provider.getPool());
        lendingPool.flashLoan(address(this), dai, amount, _params);
    }

    function executeOperation(
        address _reserve,
        uint _amount,
        uint _fee,
        bytes memory _params
    ) external {
        //write your arbitrage code here
        //transferFundsBackToPoolInternal(_reserve, _amount + _fee);

    }
}
