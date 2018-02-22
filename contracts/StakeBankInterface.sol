pragma solidity ^0.4.18;

interface StakeBankInterface {

    event Staked(address indexed user, uint256 amount, uint256 total);
    event Unstaked(address indexed user, uint256 amount, uint256 total);

    function stake(uint256 amount) public;
    function stakeFor(address user, uint256 amount) public;
    function unstake(uint256 amount) public;
    function totalStakedFor(address addr) public view returns (uint256);
    function lastStakedFor(address addr) public view returns (uint256);
    function totalStakedForAt(address addr, uint256 blockNumber) public view returns (uint256);
    function totalStakedAt(uint256 blockNumber) public view returns (uint256);

}
