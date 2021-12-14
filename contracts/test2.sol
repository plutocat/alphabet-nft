pragma solidity ^0.8.0;
contract test{
    string abc = "abcdef";
    function viewer(string memory input) public view returns (bytes memory){
        bytes memory output = bytes(input);
        return output;
    }
    function bytes2string(bytes memory input) public view returns (string memory){
        string memory output = string(input);
        return output;
    }
    
}