# Setup

Install dependencies:

```shell
yarn init -y
yarn add --dev hardhat @nomiclabs/hardhat-waffle @nomiclabs/hardhat-ethers @vechain.energy/hardhat-thor  hardhat-jest-plugin nodemon
```

manually add `hardhat.config.js`:
```js
require("@nomiclabs/hardhat-waffle");
require('@vechain.energy/hardhat-thor')
require("hardhat-jest-plugin")

module.exports = {
  solidity: "0.8.4",
  networks: {
    vechain: {
      url: 'https://testnet.veblocks.net',
      privateKey: "0x80b97e2ecfab8b1c78100c418328e8a88624e3d19928ec791a8a51cdcf01f16f",
      delegateUrl: 'https://sponsor-testnet.vechain.energy/by/90'
    },
    main: {
      url: 'https://mainnet.veblocks.net',
      privateKey: '0x80b97e2ecfab8b1c78100c418328e8a88624e3d19928ec791a8a51cdcf01f16f',
//      delegateUrl: 'https://sponsor.vechain.energy/by/…' – sign up on vechain.energy to get your custom delegation url
    }
  }
};
```

init jest tests:
```shell
$ npx jest --init

The following questions will help Jest to create a suitable configuration for your project

✔ Would you like to use Jest when running "test" script in "package.json"? … no
✔ Would you like to use Typescript for the configuration file? … no
✔ Choose the test environment that will be used for testing › node
✔ Do you want Jest to add coverage reports? … no
✔ Which provider should be used to instrument code for coverage? › v8
✔ Automatically clear mock calls, instances and results before every test? … yes

📝  Configuration file created at /jest.config.js
```

# Commands

* `yarn build` to compile contract
* `yarn test` to run tests
* `yarn test:watch` to run tests again when something changes
* `yarn deploy Factory` to deploy contract
* `yarn deploy:proxy Factory` to deploy contract with proxy in front
* `yarn deploy:upgrade Factory` to deploy contract and upgrade proxy
* `yarn contract:call <Contract Name> <Function Name> <Args>` to call a function or initiate a transaction to execute a function


# Interface Generation

```shell
curl -s https://raw.githubusercontent.com/vechain/b32/master/ABIs/thornode-tokenauction.json | npx abi-to-sol IThorNode > contracts/IThorNode.sol```
```

# Example

## Deploy

```shell
$ NETWORK=main yarn deploy XNode
yarn run v1.22.19
$ node scripts/deploy-contract.js XNode

Deploying to **MAIN** network

ℹ [XNode] Artifact written to src/contracts/main/XNode.json
ℹ [XNode] Transaction Id: 0xec0be4ff9e7b1e967c664bfda48179dae8816703d70facfefca8ee977864e136
✔ [XNode] Contract is now available at 0x5C68F31b590E0345568e26a373F1b886F9Ae85c7

✨  Done in 26.77s.
```

## Test

```shell
$ NETWORK=main yarn call XNode isXNode 0x5C68F31b590E0345568e26a373F1b886F9Ae85c7
yarn run v1.22.19
$ node scripts/contract-call.js XNode isXNode 0x5C68F31b590E0345568e26a373F1b886F9Ae85c7

Working on **MAIN** network

ℹ [XNode] 0x5C68F31b590E0345568e26a373F1b886F9Ae85c7 calling isXNode(0x5C68F31b590E0345568e26a373F1b886F9Ae85c7)
✔ Results:

false
✨  Done in 1.25s.

$ NETWORK=main yarn call XNode isXNode 0xf84090b27109454feE78987ae123EC7AEe4c27aE
yarn run v1.22.19
$ node scripts/contract-call.js XNode isXNode 0xf84090b27109454feE78987ae123EC7AEe4c27aE

Working on **MAIN** network

ℹ [XNode] 0x5C68F31b590E0345568e26a373F1b886F9Ae85c7 calling isXNode(0xf84090b27109454feE78987ae123EC7AEe4c27aE)
✔ Results:

true
✨  Done in 1.23s.
```