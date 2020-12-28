//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.0;

import "hardhat/console.sol";
import "./CallbackBridge.sol";

contract Test is CallbackBridge {
  function f() public usingCallback {
    console.log("#2,", "gasleft", gasleft());
  }
}
