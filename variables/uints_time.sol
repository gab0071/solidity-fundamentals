// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

// @tittle Units Time
// @author catellaTech

contract unitsTime {
    // units time
    /*
    @dev  Suffixes like seconds, minutes, hours, days and weeks after literal numbers
    can be used to specify units of time where seconds are the base unit and units are 
    considered naively in the following way:
    
    */
    
    uint public currentTime = now;
    uint public fiftySeconds = 50 seconds;
    uint public oneMinute = 1 minutes;
    uint public twoHours = 2 hours;
    uint public fiftyDays = 50 days;
    uint public oneWeek = 1 weeks;
    uint public oneYear = 365 days;


    // example  working with the unit times
    
    function moreSeconds() public view returns(uint) {
        return currentTime + fiftySeconds;
    }

    function moreHours() public view returns(uint) {
        return currentTime + 1 hours;
    }
    
    function moreDays() public view returns(uint) {
        return currentTime + 3 days;
    }
    
    function moreWees() public view returns(uint) {
        return currentTime + oneWeek;
    }
}