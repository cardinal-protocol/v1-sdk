// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


interface IYieldSyncGovernance
{
	/**
	* @notice Pay To
	*/
	function payTo()
		external
		view
		returns (address)
	;


	/**
	* @notice Pay To Update
	* @param _payTo {address}
	*/
	function payToUpdate(address _payTo)
		external
	;
}
