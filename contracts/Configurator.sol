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
    
    token.mint(0xEA15Adb66DC92a4BbCcC8Bf32fd25E2e86a2A770, 30000000000);
    token.mint(0xEA15Adb66DC92a4BbCcC8Bf32fd25E2e86a2A770, 12000000000);
    token.mint(0xEA15Adb66DC92a4BbCcC8Bf32fd25E2e86a2A770, 30000000000);
    token.mint(0xEA15Adb66DC92a4BbCcC8Bf32fd25E2e86a2A770, 3000000000);

    preITO = new PreITO();

    preITO.setWallet(0xa86780383E35De330918D8e4195D671140A60A74);
    preITO.setStart(1531094400);
    preITO.setPeriod(54);
    preITO.setPrice(1200000);
    preITO.setMinInvestedLimit(100000000000000000);
    preITO.setHardcap(25000000000000000000000);
    preITO.setToken(token);

    token.setSaleAgent(preITO);

    ito = new ITO();

    ito.setWallet(0x98882D176234AEb736bbBDB173a8D24794A3b085);
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

    address manager = 0xEA15Adb66DC92a4BbCcC8Bf32fd25E2e86a2A770;

    token.transferOwnership(manager);
    preITO.transferOwnership(manager);
    ito.transferOwnership(manager);
  }

}

