// SPDX-License-Identifier: UNLICENSED
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.6.6. SEE SOURCE BELOW. !!
pragma solidity >=0.7.0 <0.9.0;

interface IThorNode {


function removeAuctionWhiteList( uint256 _tokenId,address _address ) external   ;
function supportsInterface( bytes4 _interfaceId ) external view returns (bool ) ;
function sendBonusTo( address _to,uint256 _amount ) external   ;
function name(  ) external view returns (string memory ) ;
function isNormalToken( address _target ) external view returns (bool ) ;
function getApproved( uint256 _tokenId ) external view returns (address ) ;
function approve( address _to,uint256 _tokenId ) external   ;
function operators( address  ) external view returns (bool ) ;
function totalSupply(  ) external view returns (uint256 ) ;
function isToken( address _target ) external view returns (bool ) ;
function InterfaceId_ERC165(  ) external view returns (bytes4 ) ;
function setTokenMetadataBaseURI( string memory _newBaseURI ) external   ;
function transferFrom( address _from,address _to,uint256 _tokenId ) external   ;
function getTokenParams( uint8 _level ) external view returns (uint256 , uint64 , uint64 , uint64 ) ;
function auctionCount(  ) external view returns (uint256 ) ;
function setLeadTime( uint64 _leadtime ) external   ;
function createDirectionalSaleAuction( uint256 _tokenId,uint128 _price,uint64 _duration,address _toAddress ) external   ;
function unpause(  ) external  returns (bool ) ;
function addToBlackList( address _badGuy ) external   ;
function bid( uint256 _tokenId ) external payable  ;
function blackList( address  ) external view returns (bool ) ;
function removeFromBlackList( address _innocent ) external   ;
function canTransfer( uint256 _tokenId ) external view returns (bool ) ;
function paused(  ) external view returns (bool ) ;
function upgradeTo( uint256 _tokenId,uint8 _toLvl ) external   ;
function ownerOf( uint256 _tokenId ) external view returns (address ) ;
function transferCooldown(  ) external view returns (uint64 ) ;
function setSaleAuctionAddress( address _address ) external   ;
function balanceOf( address _owner ) external view returns (uint256 ) ;
function applyUpgrade( uint8 _toLvl ) external   ;
function addToken( address _addr,uint8 _lvl,bool _onUpgrade,uint64 _applyUpgradeTime,uint64 _applyUpgradeBlockno ) external   ;
function pause(  ) external  returns (bool ) ;
function leadTime(  ) external view returns (uint64 ) ;
function owner(  ) external view returns (address ) ;
function symbol(  ) external view returns (string memory ) ;
function cancelAuction( uint256 _tokenId ) external   ;
function addOperator( address _operator ) external   ;
function getMetadata( uint256 _tokenId ) external view returns (address , uint8 , bool , bool , uint64 , uint64 , uint64 ) ;
function transfer( address _to,uint256 _tokenId ) external   ;
function removeOperator( address _operator ) external   ;
function downgradeTo( uint256 _tokenId,uint8 _toLvl ) external   ;
function cancelUpgrade( uint256 _tokenId ) external   ;
function setTransferCooldown( uint64 _cooldown ) external   ;
function createSaleAuction( uint256 _tokenId,uint128 _startingPrice,uint128 _endingPrice,uint64 _duration ) external   ;
function idToOwner( uint256  ) external view returns (address ) ;
function tokenURI( uint256 _tokenId ) external view returns (string memory ) ;
function addAuctionWhiteList( uint256 _tokenId,address _address ) external   ;
function xTokenCount(  ) external view returns (uint64 ) ;
function saleAuction(  ) external view returns (address ) ;
function ownerToId( address  ) external view returns (uint256 ) ;
function transferOwnership( address newOwner ) external   ;
function normalTokenCount(  ) external view returns (uint64 ) ;
function isX( address _target ) external view returns (bool ) ;
event AuctionCreated( uint256 indexed _auctionId,uint256 indexed _tokenId,uint256 _startingPrice,uint256 _endingPrice,uint64 _duration ) ;
event AuctionSuccessful( uint256 indexed _auctionId,uint256 indexed _tokenId,address indexed _seller,address _winner,uint256 _finalPrice ) ;
event AddAuctionWhiteList( uint256 indexed _auctionId,uint256 indexed _tokenId,address indexed _candidate ) ;
event RemoveAuctionWhiteList( uint256 indexed _auctionId,uint256 indexed _tokenId,address indexed _candidate ) ;
event Transfer( address indexed _from,address indexed _to,uint256 indexed _tokenId ) ;
event Approval( address indexed _owner,address indexed _approved,uint256 indexed _tokenId ) ;
event ApprovalForAll( address indexed _owner,address indexed _operator,bool _approved ) ;
event NewUpgradeApply( uint256 indexed _tokenId,address indexed _applier,uint8 _level,uint64 _applyTime,uint64 _applyBlockno ) ;
event CancelUpgrade( uint256 indexed _tokenId,address indexed _owner ) ;
event LevelChanged( uint256 indexed _tokenId,address indexed _owner,uint8 _fromLevel,uint8 _toLevel ) ;
event AuctionCancelled( uint256 indexed _auctionId,uint256 indexed _tokenId ) ;
event ProtocolUpgrade( address _saleAuction ) ;
event OperatorUpdated( address _op,bool _enabled ) ;
event BlackListUpdated( address _person,bool _op ) ;
event Pause(  ) ;
event Unpause(  ) ;
event OwnershipTransferred( address indexed previousOwner,address indexed newOwner ) ;
}




// THIS FILE WAS AUTOGENERATED FROM THE FOLLOWING ABI JSON:
/*
[{"inputs":[{"name":"_tokenId","type":"uint256"},{"name":"_address","type":"address"}],"name":"removeAuctionWhiteList","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_interfaceId","type":"bytes4"}],"name":"supportsInterface","outputs":[{"name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_to","type":"address"},{"name":"_amount","type":"uint256"}],"name":"sendBonusTo","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_target","type":"address"}],"name":"isNormalToken","outputs":[{"name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"}],"name":"getApproved","outputs":[{"name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_to","type":"address"},{"name":"_tokenId","type":"uint256"}],"name":"approve","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"","type":"address"}],"name":"operators","outputs":[{"name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_target","type":"address"}],"name":"isToken","outputs":[{"name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"InterfaceId_ERC165","outputs":[{"name":"","type":"bytes4"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_newBaseURI","type":"string"}],"name":"setTokenMetadataBaseURI","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_tokenId","type":"uint256"}],"name":"transferFrom","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_level","type":"uint8"}],"name":"getTokenParams","outputs":[{"name":"","type":"uint256"},{"name":"","type":"uint64"},{"name":"","type":"uint64"},{"name":"","type":"uint64"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"auctionCount","outputs":[{"name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_leadtime","type":"uint64"}],"name":"setLeadTime","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"},{"name":"_price","type":"uint128"},{"name":"_duration","type":"uint64"},{"name":"_toAddress","type":"address"}],"name":"createDirectionalSaleAuction","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"unpause","outputs":[{"name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_badGuy","type":"address"}],"name":"addToBlackList","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"}],"name":"bid","outputs":[],"stateMutability":"payable","type":"function"},{"inputs":[{"name":"","type":"address"}],"name":"blackList","outputs":[{"name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_innocent","type":"address"}],"name":"removeFromBlackList","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"}],"name":"canTransfer","outputs":[{"name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"paused","outputs":[{"name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"},{"name":"_toLvl","type":"uint8"}],"name":"upgradeTo","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"}],"name":"ownerOf","outputs":[{"name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"transferCooldown","outputs":[{"name":"","type":"uint64"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_address","type":"address"}],"name":"setSaleAuctionAddress","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_owner","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_toLvl","type":"uint8"}],"name":"applyUpgrade","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_addr","type":"address"},{"name":"_lvl","type":"uint8"},{"name":"_onUpgrade","type":"bool"},{"name":"_applyUpgradeTime","type":"uint64"},{"name":"_applyUpgradeBlockno","type":"uint64"}],"name":"addToken","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"pause","outputs":[{"name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"leadTime","outputs":[{"name":"","type":"uint64"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"}],"name":"cancelAuction","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_operator","type":"address"}],"name":"addOperator","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"}],"name":"getMetadata","outputs":[{"name":"","type":"address"},{"name":"","type":"uint8"},{"name":"","type":"bool"},{"name":"","type":"bool"},{"name":"","type":"uint64"},{"name":"","type":"uint64"},{"name":"","type":"uint64"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_to","type":"address"},{"name":"_tokenId","type":"uint256"}],"name":"transfer","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_operator","type":"address"}],"name":"removeOperator","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"},{"name":"_toLvl","type":"uint8"}],"name":"downgradeTo","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"}],"name":"cancelUpgrade","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_cooldown","type":"uint64"}],"name":"setTransferCooldown","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"},{"name":"_startingPrice","type":"uint128"},{"name":"_endingPrice","type":"uint128"},{"name":"_duration","type":"uint64"}],"name":"createSaleAuction","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"","type":"uint256"}],"name":"idToOwner","outputs":[{"name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"}],"name":"tokenURI","outputs":[{"name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_tokenId","type":"uint256"},{"name":"_address","type":"address"}],"name":"addAuctionWhiteList","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"xTokenCount","outputs":[{"name":"","type":"uint64"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"saleAuction","outputs":[{"name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"","type":"address"}],"name":"ownerToId","outputs":[{"name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"normalTokenCount","outputs":[{"name":"","type":"uint64"}],"stateMutability":"view","type":"function"},{"inputs":[{"name":"_target","type":"address"}],"name":"isX","outputs":[{"name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_auctionId","type":"uint256"},{"indexed":true,"name":"_tokenId","type":"uint256"},{"indexed":false,"name":"_startingPrice","type":"uint256"},{"indexed":false,"name":"_endingPrice","type":"uint256"},{"indexed":false,"name":"_duration","type":"uint64"}],"name":"AuctionCreated","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_auctionId","type":"uint256"},{"indexed":true,"name":"_tokenId","type":"uint256"},{"indexed":true,"name":"_seller","type":"address"},{"indexed":false,"name":"_winner","type":"address"},{"indexed":false,"name":"_finalPrice","type":"uint256"}],"name":"AuctionSuccessful","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_auctionId","type":"uint256"},{"indexed":true,"name":"_tokenId","type":"uint256"},{"indexed":true,"name":"_candidate","type":"address"}],"name":"AddAuctionWhiteList","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_auctionId","type":"uint256"},{"indexed":true,"name":"_tokenId","type":"uint256"},{"indexed":true,"name":"_candidate","type":"address"}],"name":"RemoveAuctionWhiteList","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":true,"name":"_tokenId","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_approved","type":"address"},{"indexed":true,"name":"_tokenId","type":"uint256"}],"name":"Approval","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_operator","type":"address"},{"indexed":false,"name":"_approved","type":"bool"}],"name":"ApprovalForAll","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_tokenId","type":"uint256"},{"indexed":true,"name":"_applier","type":"address"},{"indexed":false,"name":"_level","type":"uint8"},{"indexed":false,"name":"_applyTime","type":"uint64"},{"indexed":false,"name":"_applyBlockno","type":"uint64"}],"name":"NewUpgradeApply","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_tokenId","type":"uint256"},{"indexed":true,"name":"_owner","type":"address"}],"name":"CancelUpgrade","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_tokenId","type":"uint256"},{"indexed":true,"name":"_owner","type":"address"},{"indexed":false,"name":"_fromLevel","type":"uint8"},{"indexed":false,"name":"_toLevel","type":"uint8"}],"name":"LevelChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_auctionId","type":"uint256"},{"indexed":true,"name":"_tokenId","type":"uint256"}],"name":"AuctionCancelled","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"_saleAuction","type":"address"}],"name":"ProtocolUpgrade","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"_op","type":"address"},{"indexed":false,"name":"_enabled","type":"bool"}],"name":"OperatorUpdated","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"_person","type":"address"},{"indexed":false,"name":"_op","type":"bool"}],"name":"BlackListUpdated","type":"event"},{"anonymous":false,"inputs":[],"name":"Pause","type":"event"},{"anonymous":false,"inputs":[],"name":"Unpause","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"previousOwner","type":"address"},{"indexed":true,"name":"newOwner","type":"address"}],"name":"OwnershipTransferred","type":"event"}]
*/