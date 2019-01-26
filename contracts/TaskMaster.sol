pragma solidity >=0.4.21 <0.6.0;

contract TaskMaster {
    mapping (address => uint) public balances; // Balances of everyone
    address public owner; // contract owner

    /**
    * Contract Instanciated by owner
    */
    constructor() public {
        owner = msg.sender; // save owner
        balances[msg.sender] = 10000; //give tokens to initiator of contract
    }

    /** 
    * Owner gives raward to doer
    */
    function reward(address doer, uint rewardAmount) public 
    isOwner()
    hasSufficientFunds(rewardAmount) 
    returns (bool sufficientFunds)
    {
        balances[msg.sender] -= rewardAmount;
        balances[doer] += rewardAmount;
        return sufficientFunds;
    }

    modifier isOwner() {
        require(msg.sender == owner);
        _;
    }
    modifier hasSufficientFunds(uint rewardAmount) {
        require(balances[msg.sender] >= rewardAmount);
        _;
    }
}
