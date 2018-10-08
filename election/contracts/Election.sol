pragma solidity ^0.4.24;

contract Election {
    // Model a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Store voters to avoid voting multiple times
    mapping(address => bool) public voters;
    // Store candidates
    // Fetch candidate
    mapping(uint => Candidate) public candidates;
    // mapping in solidity is like an associative array or a hash
    // like a dictionary in swift

    // Store Candidates cound
    uint public candidatesCount;

    event votedEvent (
        uint indexed _candidateId
    );

    // Constructor
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {
        require(!voters[msg.sender]);
        require(_candidateId > 0 && _candidateId <= candidatesCount);
        voters[msg.sender] = true;
        candidates[_candidateId].voteCount++;
        emit votedEvent(_candidateId);
    }
}