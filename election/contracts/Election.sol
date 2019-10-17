pragma solidity ^0.5.0;

contract Election{

          //Model candidate
          struct Candidate {
             uint id;
             string name;
             uint voteCount;
          }

          //Store Candidate count
          uint public candidatesCount;

         constructor () public{
            addCandidate("Candidate 1");
            addCandidate("Candidate 2");
           }


          //Store Candidate and Fetch Candidate
          mapping(uint => Candidate) public candidates;

         function addCandidate(string memory name) private{
             candidatesCount ++;
             candidates[candidatesCount] = Candidate(candidatesCount, name, 0);
         }

}