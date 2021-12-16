pragma solidity ^0.8.7;
contract test{
    string abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    function viewer(string memory input) public view returns (bytes memory){
        bytes memory output = bytes(input);
        return output;
    }
    function bytes2string(bytes memory input) public view returns (string memory){
        string memory output = string(input);
        return output;
    }
    function slice(bytes calldata _input) public pure returns (uint){//bytes memory){    
        bytes memory aa = _input[:1];
        uint bb = _input.length;
        return bb;
    }
    function slice2(string calldata _input) public pure returns (uint){//(string memory){    
        string memory aa = _input[:1];
        string memory tt = _input[1:2];
        uint length = (bytes(_input)).length;
        return length;
    }
    uint private len = 26;
    function random(string memory input) public pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(input)));
    }
    function random2() public returns(uint){
        uint rNum = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender)))%100;
        return rNum;
    }
    function pluck(uint256 tokenId, string memory keyPrefix) public view returns (string memory) {
        uint256 rand = random(string(abi.encodePacked(keyPrefix, toString(tokenId))));
        uint num = rand % len;
        string memory output = toString(num);
        return output;
    }
    function toString(uint256 value) internal pure returns (string memory) {
    // Inspired by OraclizeAPI's implementation - MIT license
    // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }
}
