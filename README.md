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

* _Team tokens wallet_        : 0x56c991dbe9B4F558F8B8Df3303Ae55Dd1E7C7274
* _Advisors tokens wallet_    : 0xf5C6A71B38f8369eDBdbB15885119F857Fa2cc8f
* _Reserv tokens wallet_      : 0x9Aa66A8d9bf04Eba1788b8FB375b7964e1C16BE9
* _Bounty tokens wallet_      : 0xCe1b5C13Bc1492218bEE349307F10c7973384041
* _Contracts manager_         : 0xaaE84d793CFCEcA10E1C5e62400BF743989BC12C

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
* _Hardcap_                     : 25 000 ETH
* _Period_                      : 54 days
* _Start_                       : 9 Jul 2018 00:00:00 GMT
* _Wallet_                      : 0x30Ba66F9C85D8a7564c9D19f2845b015b36f086a

#### ITO
* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 6000 Tokens
* _Hardcap_                     : 100 000 ETH
* _Start_                       : 10 Sep 2018 00:00:00 GMT
* _Wallet_                      : 0x09205aD4daAE9090427e81D6b0B3B00169427abb
 
##### Milestones
1. 21 days, bonus +30%
2. 15 days, bonus +25%
3. 16 days, bonus +20% 
4. 15 days, bonus +15% 
4. 15 days, bonus +10% 
4. 15 days, bonus +5% 
4. 16 days without bonus 


## Ropsten network configuration

### Links
1. _Token_ - https://ropsten.etherscan.io/address/0x6fb6b778ee6b6b619506357e5e8a1f61ab139c9e
2. _PreITO_ - https://ropsten.etherscan.io/address/0x1fd40aef8826884186e044b7adec650753abcb51
3. _ITO_ - https://ropsten.etherscan.io/address/0xdd2753a05a8dd26d59525918099b11e39a18c46f


### Crowdsale stages

#### PreITO

* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 12000 Tokens
* _Hardcap_                     : 1 ETH
* _Period_                      : 54 days
* _Start_                       : 20 Jun 2018 00:00:00 GMT
* _Wallet_                      : 0x8fd94be56237ea9d854b23b78615775121dd1e82

##### Purchasers

* 0.01 ETH => rejected txn, less then mininal investment limit, gas = 21300
https://ropsten.etherscan.io/tx/0x8947821ed63aa67515c293223776b4497128e3b8cf3284c9b47bea531724135f

* 1 ETH =>  12000 tokens, gas = 131224
https://ropsten.etherscan.io/tx/0xc7a9af97df886479451de88ffdcff07becfdf130f278a550c281d1cf94a12f6a

* 1 ETH => rejected txn, hardcap is reached, gas = 38564
https://ropsten.etherscan.io/tx/0x69dbfeb030635fbf3009cc5eb3718d7a379b8cf4dfa43e907f4b3faf2b0552cf

##### Service operations

* finish, gas = 30263
https://ropsten.etherscan.io/tx/0xd376ff6b370cf359e4bc60163c0ff7d48218c402e5a797cfc5692b83282c4513


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

* 0.1 ETH => 780 tokens (30% bonus), gas = 133535
https://ropsten.etherscan.io/tx/0xa342c10da52719127b6697be1963538035be40ece2f750f6f544bf2268db6ca9

* 0.1 ETH => 750 tokens (25% bonus), gas = 63975
https://ropsten.etherscan.io/tx/0x6fd8b4bbc2aae1bb4c259eaaea919c51935beca1876aecaeee997f15fddb098e

* transfer 50 tokens => rejected txn, gas = 25226
https://ropsten.etherscan.io/tx/0xe48738e08a144d3a06862995370f3f67c80d76c58c4a76ddbbe816146a987a65

* transfer 50 tokens (account is unlocked now), gas = 54189
https://ropsten.etherscan.io/tx/0x6fd2105b713a0dd12fd9861d9eb7443a97684dce85eb880a2a31e983583e140a

##### Service operations

* setStart, gas = 27888
https://ropsten.etherscan.io/tx/0x08970de30016ea3ecbaa89b87b9381cd4f8b210f954799ecc84b504536aea5ff

* unclockAddressDuringITO, gas = 44496
https://ropsten.etherscan.io/tx/0x1d1781682e3dfd81f64f16d00f3eb5cacde3b4ba43f7035b68d16a131848bf8d

* finish, gas = 51389
https://ropsten.etherscan.io/tx/0x365ce419f0b4b48c23e02a119cb578b7979e904257b4695e69f7b57a0d117c4d
