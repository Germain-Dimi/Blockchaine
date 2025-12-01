// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount)
        external
        returns (bool);
}


contract MyToken is IERC20 {
    // Infos du token
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;

    
    uint256 private _totalSupply;

    
    mapping(address => uint256) public balanceOf;

    
    mapping(address => mapping(address => uint256)) public allowance;

    constructor() {
        
        uint256 initialSupply = 1000000 

        _totalSupply = initialSupply;

        balanceOf[msg.sender] = initialSupply;
    }

    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

}
