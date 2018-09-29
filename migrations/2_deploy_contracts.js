const JupiterCoinCrowdsale = artifacts.require('./JupiterCoinCrowdsale.sol');
const JupiterCoin = artifacts.require('./JupiterCoin.sol');

module.exports = function(deployer, network, accounts) {
  const openingTime = web3.eth.getBlock('latest').timestamp + 120; // 2 minutes
  const closingTime = openingTime + 86400 * 365; // 1 year
  const rate = new web3.BigNumber(1); // 1:1 ratio
  const wallet = accounts[0];

  return deployer
    .then(() => {
      return deployer.deploy(JupiterCoin);
    })
    .then(() => {
      return deployer.deploy(
        JupiterCoinCrowdsale,
        openingTime,
        closingTime,
        rate,
        wallet,
        JupiterCoin.address
      );
    });
};
