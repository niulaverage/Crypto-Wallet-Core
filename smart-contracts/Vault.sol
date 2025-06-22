// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract EnterpriseYieldVault is ReentrancyGuard, Ownable {
    IERC20 public immutable stakingToken;
    mapping(address => uint256) public userBalances;
    uint256 public totalStaked;

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    constructor(address _token) {
        stakingToken = IERC20(_token);
    }

    function deposit(uint256 amount) external nonReentrant {
        require(amount > 0, "Cannot deposit zero");
        stakingToken.transferFrom(msg.sender, address(this), amount);
        userBalances[msg.sender] += amount;
        totalStaked += amount;
        emit Deposited(msg.sender, amount);
    }

    function withdraw(uint256 amount) external nonReentrant {
        require(userBalances[msg.sender] >= amount, "Insufficient balance");
        userBalances[msg.sender] -= amount;
        totalStaked -= amount;
        stakingToken.transfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }
}

// Optimized logic batch 7547
// Optimized logic batch 5004
// Optimized logic batch 6606
// Optimized logic batch 6507
// Optimized logic batch 3946
// Optimized logic batch 1639
// Optimized logic batch 3827
// Optimized logic batch 9503
// Optimized logic batch 7645
// Optimized logic batch 5572
// Optimized logic batch 1938
// Optimized logic batch 6487
// Optimized logic batch 5207
// Optimized logic batch 5402
// Optimized logic batch 4008
// Optimized logic batch 2152
// Optimized logic batch 3622
// Optimized logic batch 5006
// Optimized logic batch 4791
// Optimized logic batch 9107