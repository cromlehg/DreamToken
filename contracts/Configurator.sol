pragma solidity ^0.4.18;

import './ownership/Ownable.sol';
import './DreamToken.sol';
import './PreITO.sol';
import './ITO.sol';

contract Configurator is Ownable {

  MintableToken public token;

  PreITO public preITO;

  ITO public ito;

  function deploy() public onlyOwner {

    token = new DreamToken();
    
    token.mint(0x56c991dbe9B4F558F8B8Df3303Ae55Dd1E7C7274, 30000000000);
    token.mint(0xf5C6A71B38f8369eDBdbB15885119F857Fa2cc8f, 12000000000);
    token.mint(0x9Aa66A8d9bf04Eba1788b8FB375b7964e1C16BE9, 30000000000);
    token.mint(0xCe1b5C13Bc1492218bEE349307F10c7973384041, 3000000000);

    preITO = new PreITO();

    preITO.setWallet(0x30Ba66F9C85D8a7564c9D19f2845b015b36f086a);
    preITO.setStart(1531094400);
    preITO.setPeriod(54);
    preITO.setPrice(1200000);
    preITO.setMinInvestedLimit(100000000000000000);
    preITO.setHardcap(25000000000000000000000);
    preITO.setToken(token);

    token.setSaleAgent(preITO);

    ito = new ITO();

    ito.setWallet(0x09205aD4daAE9090427e81D6b0B3B00169427abb);
    ito.setStart(1536537600);
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

    preITO.setNextSaleAgent(ito);

    address manager = 0xaaE84d793CFCEcA10E1C5e62400BF743989BC12C;

    token.transferOwnership(manager);
    preITO.transferOwnership(manager);
    ito.transferOwnership(manager);
  }

}

