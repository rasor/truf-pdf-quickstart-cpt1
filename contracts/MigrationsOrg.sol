pragma solidity >=0.4.21 <0.6.0;

contract MigrationsOrg {
    address public owner;
    uint public last_completed_migration;

    constructor() public {
        owner = msg.sender;
    }

    modifier restricted() {
        if (msg.sender == owner) _;
    }

    function setCompleted(uint completed) public restricted {
        last_completed_migration = completed;
    }

    function upgrade(address new_address) public restricted {
        MigrationsOrg upgraded = MigrationsOrg(new_address);
        upgraded.setCompleted(last_completed_migration);
    }
}
