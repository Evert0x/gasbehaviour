//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.0;

import "hardhat/console.sol";

contract Callback {

    // func thisValue todo, substracts all funds from this.value
    function HandleCallback() external {
        console.log("#3,", "gasleft", gasleft());
    }
}
