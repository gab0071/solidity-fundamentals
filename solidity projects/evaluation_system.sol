// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 < 0.7.0;
pragma experimental ABIEncoderV2;

// @tittle Factory
// @author catellaTech


/*
 -------------------------------------------|
  STUDENT   |      ID      | QUALIFICATION  |
 -------------------------------------------|
  Catherine |    77755N    |      9         |
  Gabriela  |    12345X    |      8         |
  Maria     |    02468T    |      2         |
  john      |    13579U    |      3         |
  Cristiano |    98765Z    |      5         |

*/

contract evaluation_system {
    // Teacher address
    address public teacher;

    constructor() public {
        teacher = msg.sender;
    }

    // Mapping to relate the hash of the student's identity with his exam grade
    mapping (bytes32 => uint) Qualy;

    // Dynamic array of students requesting exam revisions
    string [] reviews;

    // Control of the functions executable by the teacher
    // Modifier
     modifier teacherOnly(address _address){
        // Requires that the address entered by parameter is equal to the owner of the contract
        require(_address == teacher, "You do not have permissions to run this function.");
        _;
    }

    // Events 
    event students_evaluated(bytes32, uint); 
    event revision_event(string);


    // Function to evaluate students 
    function Evaluate(string memory _idStudents, uint _qualy) public teacherOnly(msg.sender){
      // Hash of the student ID
      bytes32 hash_idStudents = keccak256(abi.encodePacked(_idStudents));

      // Relation between the hash of the student's identification and his grade
      Qualy[hash_idStudents] = _qualy;

      // Emit event students_evaluated
        emit students_evaluated(hash_idStudents,_qualy);
    }

    // Function to view a student's grades
    function SeeYourNote(string memory _idStudents) public view returns(uint){
        // Hash of the student ID
        bytes32 hash_idStudents = keccak256(abi.encodePacked(_idStudents));
        // Note associated with the student's hash
        uint students_note = Qualy[hash_idStudents];
        // display the note
        return students_note;

    }
    
    // Function to request a review of the exam
    function Review(string memory _idStudents) public {
        // Store the student's identity in an array
        reviews.push(_idStudents);
        // Emit of the event
        emit revision_event(_idStudents);
    }

    // Function to see the students who have requested exam review
    function SeeReviews() public view teacherOnly(msg.sender) returns(string [] memory){
        // Return the student identities
        return reviews;
    }
}