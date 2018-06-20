pragma solidity ^0.4.18;

import './ownership/Ownable.sol';

contract DreamToken {
  function setSaleAgent(address newSaleAgent) public;
  function transferOwnership(address newOwner) public;
  function mint(address _to, uint256 _amount) public;
}

contract PreITO {
  function setStart(uint newStart) public;
  function setPeriod(uint newPeriod) public;
  function setPrice(uint newPrice) public;
  function setMinInvestedLimit(uint newMinInvestedLimit) public;
  function setHardcap(uint newHardcap) public;
  function setWallet(address newWallet) public;
  function setNextSaleAgent(address newICO) public;
  function setToken(address newToken) public;
  function transferOwnership(address newOwner) public;
}

contract ITO {
  function setStart(uint newStart) public;
  function addMilestone(uint period, uint bonus) public;
  function setPrice(uint newPrice) public;
  function setMinInvestedLimit(uint newMinInvestedLimit) public;
  function setHardcap(uint newHardcap) public;
  function setWallet(address newWallet) public;
  function setToken(address newToken) public;
  function transferOwnership(address newOwner) public;
}

contract TestConfigurator is Ownable {
  DreamToken public token;
  PreITO public preITO;
  ITO public ito;

  function setToken(address _token) public onlyOwner {
    token = DreamToken(_token);
  }

  function setPreITO(address _preITO) public onlyOwner {
    preITO = PreITO(_preITO);
  }

  function setITO(address _ito) public onlyOwner {
    ito = ITO(_ito);
  }

  function deploy() public onlyOwner {
    token.mint(0xaa8ed6878a202eF6aFC518a64D2ccB8D73f1f2Ca, 30000000000);
    token.mint(0x24a7774d0eba02846580A214eeca955214cA776C, 12000000000);
    token.mint(0x093A89bDb5CE905fecb6272ff3ac92f53350a79A, 30000000000);
    token.mint(0x8Ba7Aa817e5E0cB27D9c146A452Ea8273f8EFF29, 3000000000);

    preITO.setWallet(0x8fD94be56237EA9D854B23B78615775121Dd1E82);
    preITO.setStart(1529452800);
    preITO.setPeriod(54);
    preITO.setPrice(1200000);
    preITO.setMinInvestedLimit(100000000000000000);
    preITO.setHardcap(1000000000000000000);
    preITO.setToken(token);

    token.setSaleAgent(preITO);
    preITO.setNextSaleAgent(ito);

    ito.setWallet(0x8fD94be56237EA9D854B23B78615775121Dd1E82);
    ito.setStart(1529452800);
    ito.addMilestone(21, 30);
    ito.addMilestone(15, 25);
    ito.addMilestone(16, 20);
    ito.addMilestone(15, 15);
    ito.addMilestone(15, 10);
    ito.addMilestone(15, 5);
    ito.addMilestone(16, 0);
    ito.setPrice(600000);
    ito.setMinInvestedLimit(100000000000000000);
    ito.setHardcap(100000000000000000000000);
    ito.setToken(token);

    token.transferOwnership(owner);
    preITO.transferOwnership(owner);
    ito.transferOwnership(owner);
  }
}
