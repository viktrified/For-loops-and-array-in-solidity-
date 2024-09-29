// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
// a smart contract that returns the square of each element of an array

contract Shiting {
    uint256[] public arr = [1, 2, 3, 7, 8, 20, 9];

    function loopThroughTwo() public view returns (uint256) {
        uint256 square = 0;

        for (uint256 i = 0; i < arr.length; i++) {
            square = arr[i];
        }
        return square;
    }
}
