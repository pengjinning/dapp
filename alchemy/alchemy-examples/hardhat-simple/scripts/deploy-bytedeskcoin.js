async function main() {
    //
    const [deployer] = await ethers.getSigners();
    // Deploying contracts with the account: 0x03822f5833c3111cABe03CB2751974E76c1f27D7
    console.log("Deploying contracts with the account:", deployer.address);

    const weiAmount = (await deployer.getBalance()).toString();
    // Account balance: 1.923885436594335565
    console.log("Account balance:", (await ethers.utils.formatEther(weiAmount)));

    // make sure to replace the "GoofyGoober" reference with your own ERC-20 name!
    const Token = await ethers.getContractFactory("ByteDeskCoin");
    const token = await Token.deploy();
    // Token address: 0x7Ceba342a16Cd88f7F596586B923FBbB2271Bce9
    // https://ropsten.etherscan.io/address/0x7Ceba342a16Cd88f7F596586B923FBbB2271Bce9
    // 500000000
    console.log("Token address:", token.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
