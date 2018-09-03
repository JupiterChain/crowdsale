pragma solidity 0.4.24;

import './JupiterCoin.sol';
import 'zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol';
import 'zeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol';


contract JupiterCoinCrowdsale is TimedCrowdsale, MintedCrowdsale {
  uint256 constant maxGasPrice = 40000000000;  // 40 gwei

  constructor
    (
      uint256 _openingTime,
      uint256 _closingTime,
      uint256 _rate,
      address _wallet,
      MintableToken _token
    )
    public
    Crowdsale(_rate, _wallet, _token)
    TimedCrowdsale(_openingTime, _closingTime) {

    }

  function _preValidatePurchase(
    address _beneficiary,
    uint256 _weiAmount
  ) internal {
    // Prevent gas war among purchasers.
    require(
      tx.gasprice <= maxGasPrice,
      "Gas price is too expensive. Don't be competitive."
    );

    super._preValidatePurchase(_beneficiary, _weiAmount);
  }
}
