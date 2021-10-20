pragma solidity ^0.8.8;

import "../RewardsDistributionRecipient.sol";
import "../Owned.sol";

contract MockRewardsRecipient is RewardsDistributionRecipient {
    uint256 public rewardsAvailable;

    constructor(address _owner) Owned(_owner) {}

    function notifyRewardAmount(uint256 reward) external onlyRewardsDistribution {
        rewardsAvailable = rewardsAvailable + reward;
        emit RewardAdded(reward);
    }

    event RewardAdded(uint256 amount);
}
