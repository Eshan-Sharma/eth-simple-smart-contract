//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18 ;// solidity version

contract  SimpleStorage{
    //Basic types: boolean, uint, int, address, bytes
    // bool hasFavoriteNumber = true;
    uint public myFavouriteNumber = 0;
    // int signedFavouriteNumber = -92;
    // string favouriteString = "helllooooo";
    // address myAddress  = 0x4529DC63A19379635e93723F1823e02ba25b12A8;
    // bytes32 favouriteBytes = "dog";
    uint256[] favouriteNumberList;
    struct Person{
        uint256 favouriteNumber;
        string name;
    }
    mapping(string => uint256) public nameToFavouriteNumber;
    // Person public pat = Person({favouriteNumber:7,name:"pat"});
    // Person public jon = Person({favouriteNumber:21,name:"jon"});
    // Person public mariah = Person({favouriteNumber:47,name:"mariah"});
    //Dynamic array
    Person[] public listOfPeople;

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }
    //view,pure
    function retrieve() public view returns(uint256){
        return myFavouriteNumber;
    }
    //calldata, memory, storage
    //memory data can be modified
    //calldata cannot be modified
    //structs, map and array are needed to be given memory variable
    function addPerson(string memory name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber,name));
        nameToFavouriteNumber[name] = _favouriteNumber;
    }

}
