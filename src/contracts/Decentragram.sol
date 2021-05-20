//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
contract Decentragram {
  
  string public name = "Decentragram"; // state variable who belong to the entire smart contract

// Store Images
uint public imageCount = 0;
mapping(uint => Image) public images;
struct Image {
  uint id;
  string hash;
  string description;
  uint tipAmount;
  address payable author;
}
event ImageCreated (
  uint id,
  string hash,
  string description,
  uint tipAmount,
  address payable author
);
// Create Images
function uploadImage(string memory _imgHash, string memory _description)  public {
  // increment image id
  imageCount++;
  // add image to contract
  images[imageCount] = Image(imageCount,_imgHash,_description,0, payable(msg.sender));

  // Trigger an event
  emit ImageCreated(imageCount, _imgHash, _description, 0, payable(msg.sender));

}

// Tip Images


}