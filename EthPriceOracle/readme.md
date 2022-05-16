# oracle

```bash
yarn init
yarn add truffle openzeppelin-solidity loom-js loom-truffle-provider bn.js axios
mkdir oracle && cd oracle && npx truffle init && cd ..
mkdir caller && cd caller && npx truffle init && cd ..
tree -L 2 -I node_modules
node scripts/gen-key.js oracle/oracle_private_key
node scripts/gen-key.js caller/caller_private_key
cd oracle && npx truffle migrate --network extdev --reset -all && cd ..
cd caller && npx truffle migrate --network extdev --reset -all && cd ..

```
