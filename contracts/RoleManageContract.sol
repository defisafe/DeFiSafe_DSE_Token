pragma solidity ^0.6.0;


//Supermanager
contract Ownable {
  address public _owner;

  modifier onlyOwner() {
    require(msg.sender == _owner);
    _;
  }
  
  function transferOwnership(address newOwner) public onlyOwner {
    if (newOwner != address(0)) {
      _owner = newOwner;
    }
  }
}

//Burning executor
contract Burnable is Ownable{
  address public _burnAddresser;

  modifier onlyBurner() {
    require(msg.sender == _burnAddresser);
    _;
  }
  
  function transferBurnship(address newBurn) public onlyOwner {
    if (newBurn != address(0)) {
      _burnAddresser = newBurn;
    }
  }
}