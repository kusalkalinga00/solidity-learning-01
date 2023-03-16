//SPDX-License-Identifier:MIT

pragma solidity ^0.8.8 ;  //setting the compiler version

contract SimpleStorage {
    
    uint256  favoriteNumber;

    function store(uint _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
        
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    } 

    //**************************************************

    mapping(string => uint256) public nameToFavouriteNumber;
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People public person = People({favoriteNumber : 5 , name : "Kusal"});

    People[] public people;

     function addPerson(string memory _name , uint256 _favoriteNumber) public {
        
        people.push(People(_favoriteNumber,_name));
        nameToFavouriteNumber[_name] = _favoriteNumber;
    }



    

   
}

//0xd9145CCE52D386f254917e481eB44e9943F39138

