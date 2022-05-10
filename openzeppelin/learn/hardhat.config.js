require('@nomiclabs/hardhat-ethers');
require("@nomiclabs/hardhat-truffle5");
require('@openzeppelin/hardhat-upgrades');
const { alchemyApiKey, mnemonic } = require('./secrets.json');
// const { etherscanApiKey, projectId, mnemonic } = require('./secrets.json');
require("@nomiclabs/hardhat-etherscan");
/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: "0.8.12",
  networks: {
    rinkeby: {
      url: `https://eth-rinkeby.alchemyapi.io/v2/${alchemyApiKey}`,
      accounts: { mnemonic: mnemonic },
    },
    // mainnet: { ... }
  },
  // etherscan: {
  //   apiKey: etherscanApiKey
  // }
};
