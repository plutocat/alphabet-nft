pragma solidity ^0.8.7;
//import "github.com/Arachnid/solidity-stringutils/src/strings.sol";
contract test{
    //using strings for *;
    string abc = "abcdef";
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
    function slice2(string calldata _input) public pure returns (string memory){    
        string memory aa = _input[:1];
        string memory tt = _input[1:2];
        return tt;
    }
    function random(string memory input) public pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(input)));
    }
}