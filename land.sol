// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Land {
    
    
    struct LandInfo {
        
        
        string personalInfo;
        string propertyInfo;
        string registrationInfo;
 
    }

    LandInfo[] public LandDetails; 
     
    function retrieve() public view returns (LandInfo[] memory){
        return LandDetails; 
    }
    
    function addLand(string memory _personalInfo,string memory _propertyInfo,string memory _registrationInfo) public {
        LandDetails.push(LandInfo(_personalInfo, _propertyInfo, _registrationInfo)); //append to  Contact[] array
        // nameToPhoneNumber[_name] = _phoneNumber; //use name to get phone number
    }

    // function transferOwnership(string memory _personalInfo,string memory _propertyInfo,string memory _registrationInfo) public {
    //     LandDetails.push(LandInfo(_personalInfo, _propertyInfo, _registrationInfo)); //append to  Contact[] array
    //     // nameToPhoneNumber[_name] = _phoneNumber; //use name to get phone number
    // }
    
}



