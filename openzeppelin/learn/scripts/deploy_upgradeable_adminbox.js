// https://docs.openzeppelin.com/learn/upgrading-smart-contracts
// npx hardhat run --network localhost scripts/deploy_upgradeable_adminbox.js
// scripts/deploy_upgradeable_adminbox.js
const { ethers, upgrades } = require('hardhat');

async function main() {
    const AdminBox = await ethers.getContractFactory('AdminBox');
    console.log('Deploying AdminBox...');
    const adminBox = await upgrades.deployProxy(AdminBox, ['0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0'], { initializer: 'initialize' });
    await adminBox.deployed();
    // AdminBox deployed to: 0xa513E6E4b8f2a923D98304ec87F64353C4D5C853
    console.log('AdminBox deployed to:', adminBox.address);
}

main();
