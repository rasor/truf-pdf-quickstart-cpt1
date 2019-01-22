pragma solidity >=0.4.21 <0.6.0;

// https://truffleframework.com/docs/truffle/getting-started/package-management-via-npm#within-your-contracts
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/MetaCoin.sol";

// https://truffleframework.com/docs/truffle/testing/writing-tests-in-solidity

contract TestMetacoin {
    function testInitialBalanceUsingDeployedContract() public {
        MetaCoin meta = MetaCoin(DeployedAddresses.MetaCoin());

        uint expected = 10000;

        Assert.equal(
            meta.getBalance(msg.sender),
            expected,
            "Owner should have 10000 MetaCoin initially"
        );
    }

    function testInitialBalanceWithNewMetaCoin() public {
        MetaCoin meta = new MetaCoin();

        uint expected = 10000;

        Assert.equal(
            meta.getBalance(address(this)),
            expected,
            "Owner should have 10000 MetaCoin initially"
        );
    }
}
