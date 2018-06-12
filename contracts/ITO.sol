pragma solidity ^0.4.18;

import './AssembledCommonSale.sol';

contract ITO is AssembledCommonSale {

  function finish() public onlyOwner {
    token.finishMinting();
  }

}
