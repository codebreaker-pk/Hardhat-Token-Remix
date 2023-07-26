const { ethers } = require("hardhat");

async function main() {
  const MyToken = await ethers.getContractFactory("MyToken");
  const myToken = await MyToken.deploy();
  await myToken.deployed();

  console.log("MyToken deployed to:", myToken.address);
}

main();