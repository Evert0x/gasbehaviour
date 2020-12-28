# Gas behaviour (see tests)

Gas usage is depending on the gas limit (higher gas limit == higher usage)

> My question: is this behaviour intended? Or it is a bug in hardhat? Or evm

As you can see below, the change in gas usage is perceived in the #3 log. In the #1 and #2 log the gas usage is independent of the gaslimit.

`npx hardhat test` can be used to geneerate this output

## 50k gas
```
#1, gasleft 28671
#2, gasleft 25522
#3, gasleft 19604
indicates ~31k gas used
actual Wei used 33171
```

## 500k gas
```
#1, gasleft 478671
#2, gasleft 475522
#3, gasleft 462572
indicates ~38k gas used
actual Wei used 33171
```

## 900k gas
```
#1, gasleft 878671
#2, gasleft 875522
#3, gasleft 856322
indicates ~44k gas used
actual Wei used 33171
```

# Update 1
Adding the actual wei used for the transaction to the tests. This is the same for every transaction. Leads me to thinking `Gasleft()` is acting funny.

# Update 2

Deployed to Goerli testnet, experiencing same behaviour. (see event logs)

## 50k gas

https://goerli.etherscan.io/tx/0x73b9259b6ae488111473cc6a494f702c8db45389117bf74654d28de47e1850e5
```
#1 gasleft 26967
#2 gasleft 23820
#3 gasleft 17900
```

## 500k gas

https://goerli.etherscan.io/tx/0xb637e72de96251d08f754587afddbf7cacd630fcc91bdc7065e6ecff9ccc78e7
```
#1 gasleft 476967
#2 gasleft 473820
#3 gasleft 460868
```

## 900k gas

https://goerli.etherscan.io/tx/0xa6ba7f5f3936fa5752bac1f0092eeaf2cc813907d4f26dd15a5a61693287fb16
```
#1 gasleft 876967
#2 gasleft 873820
#3 gasleft 854618
```