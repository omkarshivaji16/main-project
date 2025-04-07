// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Owner {
    
    
    

    struct ownerInfo {
        
        
        string _personalInfo;
        string date;
 
    }

   
    ownerInfo[] public ownerDetails;
     
   
    function retrieveOwner() public view returns (ownerInfo[] memory){
        return ownerDetails; 
    }

    function addOwner(string memory _personalInfo ,string memory _date) public {
        ownerDetails.push(ownerInfo(_personalInfo, _date)); //append to  Contact[] array
       
    }


    
}



