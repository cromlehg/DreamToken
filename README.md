![Dream Token](logo.png "Dream Token")

# Dream Token smart contract

* _Standard_        : [ERC20](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md)
* _[Name](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#name)_            : Dream
* _[Ticker](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#symbol)_          : DR
* _[Decimals](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#decimals)_        : 2
* _Emission_        : Mintable
* _Crowdsales_      : 2
* _Fiat dependency_ : No
* _Tokens locked_   : Yes

## Smart-contracts description

The tokens for the bounty and the team are minted after the ICO  is finished.  
There is a special function to return 3rd party tokens that were sent by mistake (function retrieveTokens()).  
Each stage has a direct minting function in wei. This is made to support the external payment gateways.

### Contracts contains
1. _DreamToken_ - Token contract
2. _PreITO_ - PreITO contract
3. _ITO_ - ITO contract
4. _Configurator_ - contract with main configuration for production

### How to manage contract
To start working with contract you should follow next steps:
1. Compile it in Remix with enamble optimization flag and compiler 0.4.18
2. Deploy bytecode with MyEtherWallet. Gas 5100000 (actually 5073514).
3. Call 'deploy' function on addres from (3). Gas 4000000 (actually 3979551). 

Contract manager must call finishMinting after each crowdsale milestone!
To support external mint service manager should specify address by calling _setDirectMintAgent_. After that specified address can direct mint tokens by calling _mintTokensByETHExternal_ and _mintTokensExternal_.

### How to invest
To purchase tokens investor should send ETH (more than minimum 0.1 ETH) to corresponding crowdsale contract.
Recommended GAS: 250000, GAS PRICE - 21 Gwei.

### Wallets with ERC20 support
1. MyEtherWallet - https://www.myetherwallet.com/
2. Parity 
3. Mist/Ethereum wallet

EXODUS not support ERC20, but have way to export key into MyEtherWallet - http://support.exodus.io/article/128-how-do-i-receive-unsupported-erc20-tokens

Investor must not use other wallets, coinmarkets or stocks. Can lose money.

## Tokens distribution

* _Team tokens_                 : 300 000 000
* _Advisors tokens_             : 120 000 000
* _Reserv tokens_               : 300 000 000
* _Bounty tokens_               : 30 000 000
* _For sale tokens_             : by hardcap

## AirDrop feature
* Contains airdrop support contracts

## Main network configuration

* _Team tokens wallet_        : 
* _Advisors tokens wallet_    : 
* _Reserv tokens wallet_      :
* _Bounty tokens wallet_      : 
* _Contracts manager_         :

### Links
1. _Token_ - 
2. _PreITO_ -
3. _ITO_ - 

### Features
* Manually mint tokens by owner or sale agent at any time until token minting finished. 
* Manually mint tokens in ether value by owner or sale agent at corresponding sale contract during current sale processing. 
* Tokens can mint after one year after ITO finished 

### Crowdsale stages

#### PreITO
* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 12000 Tokens
* _Hardcap_                     : 1 ETH
* _Period_                      : 54 days
* _Start_                       : 9 Jul 2018 00:00:00 GMT
* _Wallet_                      : 

#### ITO
* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 6000 Tokens
* _Hardcap_                     : 100 000 ETH
* _Start_                       : 10 Sep 2018 00:00:00 GMT
* _Wallet_                      : 
 
##### Milestones
1. 21 days, bonus +30%
2. 15 days, bonus +25%
3. 16 days, bonus +20% 
4. 15 days, bonus +15% 
4. 15 days, bonus +10% 
4. 15 days, bonus +5% 
4. 16 days without bonus 


## Ropsten network configuration #1

### Links
1. _Token_ - https://ropsten.etherscan.io/address/0x8825f224c045462c942226641362ae61b43d88b9
2. _PreITO_ - https://ropsten.etherscan.io/address/0xc13ae603e9ba3554b3cd66cde6aa65377204d3ac
3. _ITO_ - https://ropsten.etherscan.io/address/0xc47e58a5fe51f64007ecd8c036395f4775685838


### Crowdsale stages

#### PreITO

* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 12000 Tokens
* _Hardcap_                     : 1 ETH
* _Period_                      : 54 days
* _Start_                       : 20 Jun 2018 00:00:00 GMT
* _Wallet_                      : 0x8fd94be56237ea9d854b23b78615775121dd1e82

##### Purchasers

* 1 ETH =>  12000 tokens, gas = 123460
https://ropsten.etherscan.io/tx/0xffc3c24dd051c0c1829f68391f8bf64516a31d27c5687c1f9e9f0dadf850954b

* 1 ETH => rejected txn, hardcap is reached, gas = 30800
https://ropsten.etherscan.io/tx/0x8943db09f88b3eeb2fa9aa1034bb673e26119a8b30e81ff65a2c79a83cda3d53

##### Service operations

* finish, gas = 30263
https://ropsten.etherscan.io/tx/0x7a287d3d055a7b6479702323161730b27aae04bb177fa67f3d75f9e8aee62814

#### ITO

* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 5500 Tokens
* _Hardcap_                     : 100 000 ETH
* _Start_                       : 20 Jun 2018 00:00:00 GMT
* _Wallet_                      : 0x8fd94be56237ea9d854b23b78615775121dd1e82


_Milestones_

1. 21 days, bonus +30%
2. 15 days, bonus +25%
3. 16 days, bonus +20% 
4. 15 days, bonus +15% 
4. 15 days, bonus +10% 
4. 15 days, bonus +5% 
4. 16 days without bonus  

##### Purchasers

* 0.01 ETH => rejected txn, less then mininal investment limit, gas = 21297
https://ropsten.etherscan.io/tx/0x3dbbc3da77ed514492e79c8e9b6961afc2358cb405a3a9a533030783910b258d

* 0.1 ETH => 780 tokens (30% bonus), gas = 133535
https://ropsten.etherscan.io/tx/0x02cbb0a03e66771e073b82cc000bcb9518e6b072042a1d91ade0a5f3b614c1d0

* 0.1 ETH => 750 tokens (25% bonus), gas = 63975
https://ropsten.etherscan.io/tx/0x142838379f83dc50c6966e5b66d5838f4e1b50a6abcfd30cb15bae5612466fed

* transfer 50 tokens => rejected txn, gas = 25226
https://ropsten.etherscan.io/tx/0x089e87e9a0b4c8d169e32d3bb962bcf254146609ed317bcffca1e83ff377a1fe

* transfer 50 tokens (account is unlocked now), gas = 54189
https://ropsten.etherscan.io/tx/0x6a173adf09726e8b782923df2f47c1a21884fe9c05e680dcec2bbe87d7b1b428

##### Service operations

* setStart, gas = 27888
https://ropsten.etherscan.io/tx/0xd7ec1744b07efcceec24ef63e92a0146ec008b7cd1fe4c1ba517e9fe4a0a6f1e

* unclockAddressDuringITO, gas = 44496
https://ropsten.etherscan.io/tx/0xd95a812032e1aeea5b88bebe4aff4081d52166e2c98adbfbf615de987d0e6574

* finish, gas = 51389
https://ropsten.etherscan.io/tx/0x516780544c47f12cd809e33e88bd4d89872f554adb036d706e3f193b06fedc30
