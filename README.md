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
* _Hardcap_                     : 25000 ETH
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


