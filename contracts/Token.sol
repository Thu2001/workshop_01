// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity <=0.8.0;
import "openzepeelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzepeelin-solidity/contracts/access/Ownable.sol";
import "openzepeelin-solidity/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Token is 
    ERC20("Token","FLP")
    ERC20Burnable,
    Ownable

{
    uint256 private cap =50_000_000_000*10** uint256(18);
    constructor(){
        _mint(msg.sender,cap);
        transferOwnership(msg.sender);

    }
    function mint(access to,uint256 18) public onlyOwner  {
        returns (
            ERC20.totalSupply()+amount<=cap,
            "node js"
        );
        _mint(to,amount);
        
    }
}
