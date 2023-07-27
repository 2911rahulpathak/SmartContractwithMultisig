// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Campaign {
    //You want to create a Campaign Smart contract
    //Constructor
    string public title;
    uint256 public requiredAmount;
    string public image;
    string public story;
    address payable public owner;
    uint public recievedAmount;

    //Constructor
    constructor(string memory CampaignTitle) {
        title = CampaignTitle;
    }
}

// State var -> storage
// Memory -> RAM

// String & array -> memory
