// https://docs.openzeppelin.com/contracts/4.x/upgradeable
// npx hardhat run --network localhost scripts/deploy-my-collectible.js
// scripts/deploy-my-collectible.js
const { ethers, upgrades } = require("hardhat");

async function main() {
    const MyCollectible = await ethers.getContractFactory("MyCollectible");

    const mc = await upgrades.deployProxy(MyCollectible);

    await mc.deployed();
    // MyCollectible deployed to: 0x8A791620dd6260079BF849Dc5567aDC3F2FdC318
    console.log("MyCollectible deployed to:", mc.address);
}

main();