// https://docs.openzeppelin.com/contracts/4.x/erc20
// npx hardhat run --network localhost scripts/deploy_gldtoken.js
// scripts/deploy_gldtoken.js
async function main() {
    // We get the contract to deploy
    const GLDToken = await ethers.getContractFactory('GLDToken');
    console.log('Deploying GLDToken...');
    //
    const gldtoken = await GLDToken.deploy(10^18);
    await gldtoken.deployed();
    //
    // GLDToken deployed to: 0x610178dA211FEF7D417bC0e6FeD39F05609AD788
    console.log('GLDToken deployed to:', gldtoken.address);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
