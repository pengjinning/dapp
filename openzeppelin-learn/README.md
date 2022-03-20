#

```bash
# 初始化项目
npm init -y
# 安装truffle
npx truffle init
# Try our scaffold commands to get started:
$ truffle create contract YourContractName # scaffold a contract
$ truffle create test YourTestName         # scaffold a test
# 
yarn add hardhat
npx hardhat
# 编译
npx hardhat compile
# 打开一个新terminal, 运行本地hardhat区块链
npx hardhat node
# 部署
npx hardhat run --network localhost scripts/deploy.js
# Box deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
# 命令行交互
npx hardhat console --network localhost
# 运行
npx hardhat run --network localhost ./scripts/index.js
# 单元测试
npx hardhat test
# 其他全局依赖
sudo npm install -g truffle
sudo npm install -g ganache
# 下载安装ganache
https://trufflesuite.com/ganache/
# 创建新ethereum账号，每执行一次创建一个新账号
npx mnemonics
# 测试
# https://docs.openzeppelin.com/learn/connecting-to-public-test-networks
npx hardhat console --network rinkeby
```
