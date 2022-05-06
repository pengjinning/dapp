async function main() {
    const { createAlchemyWeb3 } = require("@alch/alchemy-web3");
    const web3 = createAlchemyWeb3("https://eth-ropsten.alchemyapi.io/v2/U-cLjbpbgZrkwbOFmh7loNkG1AV6MN9J");
    const blockNumber = await web3.eth.getBlockNumber();
    // The latest block number is 12195199
    console.log("The latest block number is " + blockNumber);
}
main();
