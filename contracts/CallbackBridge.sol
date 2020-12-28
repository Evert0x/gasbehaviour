//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.0;

import "hardhat/console.sol";
import "./IGasLeftEvent.sol";

interface ICallback {
    function HandleCallback() external;
}

contract CallbackBridge is IGasLeftEvent {
    ICallback public callback;

    function setCallback(ICallback _callback) public {
        callback = _callback;
    }

    modifier usingCallback {
        uint256 gasStart = gasleft();
        console.log("#1,", "gasleft", gasleft());
        emit GasL(1, gasleft());
        _;
        callback.HandleCallback();
    }
}
