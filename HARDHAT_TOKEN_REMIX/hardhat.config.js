require("@nomicfoundation/hardhat-toolbox");
require("@nomiclabs/hardhat-ethers");


/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.0",

  networks: {
    localhost: {
      url: "http://127.0.0.1:8545", // Or use your local Ethereum node URL
      chainId: 1337,
    },
  },
};