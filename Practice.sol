// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
// a smart contract that returns the square of each element of an array

contract Shiting {
    // a smart contract that square of each element of an array and returns that array.
    uint256[] public arr = [1, 2, 3, 7, 8, 6, 9];

    function sumOfTheSquare() public view returns (uint256) {
        uint256 square = 0;

        for (uint256 i = 0; i < arr.length; i++) {
            square += arr[i] ** 2;
        }
        return square;
    }

    function arrayOfSquaredValues() public view returns (uint256[] memory) {
        uint256[] memory sameArray = new uint256[](arr.length);

        for (uint256 j = 0; j < arr.length; j++) {
            sameArray[j] = arr[j] ** 2;
        }
        return sameArray;
    }
}
