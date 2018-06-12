pragma solidity ^0.4.18;

import './CommonSale.sol';
import './NextSaleAgentFeature.sol';

contract PreITO is NextSaleAgentFeature, CommonSale {

  uint public period;

  function calculateTokens(uint _invested) internal returns(uint) {
    return _invested.mul(price).div(1 ether);
  }

  function setPeriod(uint newPeriod) public onlyOwner {
    period = newPeriod;
  }

  function endSaleDate() public view returns(uint) {
    return start.add(period * 1 days);
  }
  
  function finish() public onlyOwner {
    token.setSaleAgent(nextSaleAgent);
  }

  function fallback() internal minInvestLimited(msg.value) returns(uint) {
    require(now >= start && now < endSaleDate());
    token.lockAddressAfterITO(msg.sender);
    uint tokens = mintTokensByETH(msg.sender, msg.value);
    return tokens;
  }

}
