# Gas behaviour (see tests)

Gas usage is depending on the gas limit (higher gas limit == higher usage)

> My question: is this behaviour intended? Or it is a bug in hardhat? Or evm

As you can see below, the change in gas usage is perceived in the #3 log. In the #1 and #2 log the gas usage is independent of the gaslimit.

`npx hardhat test` can be used to geneerate this output

## 50k gas
```
#1, gasleft 28671
#2, gasleft 26858
#3, gasleft 22237
total ~28k gas used
```

## 500k gas
```
#1, gasleft 478671
#2, gasleft 476858
#3, gasleft 465206
total ~35k gas used
```

## 900k gas
```
#1, gasleft 878671
#2, gasleft 876858
#3, gasleft 858956
total ~42k gas used
```