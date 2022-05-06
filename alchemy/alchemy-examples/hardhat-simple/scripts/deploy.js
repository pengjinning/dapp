async function main() {
    //
    const [deployer] = await ethers.getSigners();
    // Deploying contracts with the account: 0x03822f5833c3111cABe03CB2751974E76c1f27D7
    console.log("Deploying contracts with the account:", deployer.address);

    const weiAmount = (await deployer.getBalance()).toString();
    // Account balance: 1.98630038683302089
    console.log("Account balance:", (await ethers.utils.formatEther(weiAmount)));

    // make sure to replace the "GoofyGoober" reference with your own ERC-20 name!
    const Token = await ethers.getContractFactory("GoofyGoober");
    const token = await Token.deploy();
    // Token address: 0x472cdd2ff31b7FF3411cAae1351E836aB5C6E1e7
    // https://ropsten.etherscan.io/address/0x472cdd2ff31b7FF3411cAae1351E836aB5C6E1e7
    console.log("Token address:", token.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
