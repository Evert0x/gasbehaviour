//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.0;

import "hardhat/console.sol";
import "./IGasLeftEvent.sol";

contract Callback is IGasLeftEvent {

    // func thisValue todo, substracts all funds from this.value
    function HandleCallback() external {
        console.log("#3,", "gasleft", gasleft());
        emit GasL(3, gasleft());
    }
}
