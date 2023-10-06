// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface IYieldSyncV1VaultFactory
{
	event DeployedYieldSyncV1Vault(address indexed vaultAddress);

	receive () external payable;
	fallback () external payable;

	function YieldSyncGovernance() external view returns (address);
	function YieldSyncV1VaultRegistry() external view returns (address);
	function fee() external view returns (uint256);
	function yieldSyncV1VaultIdTracker() external view returns (uint256);
	function yieldSyncV1Vault_yieldSyncV1VaultId(address yieldSyncV1Vault) external view returns (uint256);
	function yieldSyncV1VaultId_yieldSyncV1Vault(uint256 yieldSyncV1VaultId) external view returns (address);
	function deployYieldSyncV1Vault(address signatureProtocol, address transferRequestProtocol, address[] memory admins, address[] memory members) external payable returns (address deployedYieldSyncV1Vault);
	function feeUpdate(uint256 _fee) external;
	function etherTransfer(address to) external;
}
