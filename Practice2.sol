// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RemoveAndCopy {
    uint256[] public arr = [1, 2, 3, 4, 5, 6];

    function remove(uint256 index) public {
        require(index < arr.length, "Index is out of bound");

        for (uint256 j = index; j < arr.length - 1; j++) {
            arr[j] = arr[j + 1];
        }
        arr.pop();
    }

    function getAnIndex(uint256 index) public view returns (uint256) {
        require(index < arr.length, "Index out of bound");
        return arr[index];
    }

    function still() public view returns (uint256[] memory) {
        uint256[] memory theSameArray = new uint256[](arr.length);

        for (uint256 j = 0; j < arr.length; j++) {
            theSameArray[j] = arr[j];
        }
        return theSameArray;
    }
}
