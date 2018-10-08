# ethereum-sandbox
this is a test project for ethereum technology. I'm following thru the tutorials from dApp University

## election
project is based on this [tutorial](http://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial)

### Needed
 - Truffle
 - Ganache
 - Metamask

The project used a template dApp [project](http://truffleframework.com/boxes/pet-shop)

To Deploy the Smart contracts. Run
```
$ truffle migrate
```

To run the truffle console. To interact with the local blockchain
```
$ truffle console
```

When you made changes to your smart contract. You need to hard reset it. Since, smart contracts will be permanent in the blockchain when deployed. But since, we're only using a test network, we can do this
```
$ truffle migrate --reset
```

To run the tests
```
$ truffle test
```