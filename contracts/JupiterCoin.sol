pragma solidity 0.4.24;

import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract JupiterCoin is MintableToken {
  string public name = "JUPITER COIN";
  string public symbol = "JUPT";
  uint8 public decimals = 18;
}
