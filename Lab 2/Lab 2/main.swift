//
//  main.swift
//  Lab 2
//
//  Created by Tuan Dao on 01/07/2022.
//

import Foundation

// ex1
/*
var aNumber =  Int(readLine()!)!

func dayOfTheWeek(day: Int) {
    switch day {
    case 1:
        print("Monday")
    case 2:
        print("Tuesday")
    case 3:
        print("Wednesday")
    case 4:
        print("Thursday")
    case 5:
        print("Friday")
    case 6:
        print("Saturday")
    case 7:
        print("Sunday")
    default:
        print("Error")
    }
}

dayOfTheWeek(day: aNumber)
*/

// ex2
/*
var funFactsRMIT: [String: Int] = [
    "numberOfStudents" : 6500,
    "numberScholarships": 1100,
    "numberOfGraduates": 12000,
    "numberMasterPrograms": 3,
    "numberPhDPrograms": 3,
    "numberStudentClubs": 35,
    "numberExchangePartners": 200,
]

funFactsRMIT["numberStudentClubs"] = 43
funFactsRMIT["numberOfGraduates"] = 13500
funFactsRMIT["worldUniversityRankingQS2022"] = 206
funFactsRMIT["impactRankingGlobally"] = 3
funFactsRMIT["yearFounded"] = 1887
funFactsRMIT["numberOfStaffs"] = 9150

print(funFactsRMIT["numberOfGraduates"]!)
print(funFactsRMIT["numberStudentClubs"]!)
print(funFactsRMIT["yearFounded"]!)
print(funFactsRMIT["numberOfStaffs"]!)
print(funFactsRMIT["worldUniversityRankingQS2022"]!)
 */

// ex3
/*
var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]
func highestScore(scores: [String: Int]) {
    var max: Int! = studentsAndScores["Amy"]
    for student in studentsAndScores.keys{
        if studentsAndScores[student]! > max {
            max = studentsAndScores[student]
        }
    }
    
    print(max!)
}

highestScore(scores: studentsAndScores)
*/

// ex4
/*
struct User {
    var name: String
    var email: String?
    var followers: Int
    var isActive: Bool
    
    init(name: String, email: String?, followers: Int, isActive: Bool) {
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
    }
    
    func logStatus() {
        if isActive == true {
            print("\(self.name) is working hard")
        } else {
            print("\(self.name) has left earth")
        }
    }
}

var richard = User(name: "Richard", email: nil, followers: 0, isActive: false)
richard.logStatus()
print("\nDiagnostic code (i.e., Challenge Hint):")
var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
musk.logStatus()
print("Contacting \(musk.name) on \(musk.email!) ...")
print("\(musk.name) has \(musk.followers) followers")
// sometime later
musk.isActive = false
musk.logStatus()
*/

// ex 5
/*
let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

func generatePassword() -> String {
    var password = "";
    for _ in 0..<6{
        password += alphabet[Int.random(in: 0..<26)]
    }
    return password
}

let password = generatePassword()//Replace this comment with your code.
print(password)
*/

// ex 6

/*
var ticket: [Int] = []
var winningNumbers: [Int] = []

func generateRandom() -> [Int] {
    var numArr: [Int] = []
    for _ in 0..<6 {
        numArr.append(Int.random(in: 1...49))
    }
    return numArr
}

while true {
    print("Do you want to pick your own ticket numbers (true/false)?")
    var pick = false
    let input = readLine()
    if (input == "true") {
        pick = true
    }
        
    if pick {
        print("Enter 6 numbers of your ticket (1-49):")
        ticket = readLine()?.components(separatedBy: " ").compactMap({Int($0)}) ?? []
        var isValid = true
        if ticket.count < 6 {
            print("Invalid ticket")
            isValid = false
        }
        
        for index in 0..<ticket.count {
            if (ticket[index] < 1 || ticket[index] > 49) {
                print("All numbers must be between 1 and 49")
                isValid = false
            }
        }
        
        if !isValid {
            continue
        }
    } else {
        ticket = generateRandom()
    }
    
    print("You have picked the ticket: ", terminator: "")
    ticket.forEach{num in
        print("\(num)", terminator: " ")
    }
    
    winningNumbers = generateRandom()
    print("\nThe winning ticket is: ", terminator: "")
    winningNumbers.forEach{num in
        print("\(num)", terminator: " ")
    }
    print()
    
    var match = 0
    for index in 0..<6 {
        if (ticket[index] == winningNumbers[index]) {
            match += 1
        }
    }
    print("Your ticket has matched \(match) number(s)")
    
    var prize = 0
    switch match {
    case 1, 2:
        prize = 10
    case 3:
        prize = 100
    case 4:
        prize = 1000
    case 5:
        prize = 5000
    case 6:
        prize = 5000000
    default:
        prize = 0
    }
    print("You have won $\(prize)")
    
    print("Do you want to continue(yes/no)?")
    let isContinue = readLine()
    if isContinue != "yes" {
        break
    }
}
*/

// ex6 - bonus

var ticket: [Int] = []
var winningNumbers: [Int] = []
var gamesWon = 0
var gamesMatchAll6Nums = 0
var totalMoneyWon = 0
var totalTicketCost = 0

func generateRandom() -> [Int] {
    var numArr: [Int] = []
    for _ in 0..<6 {
        numArr.append(Int.random(in: 1...49))
    }
    return numArr
}

print("How many games do you want to play")
var numOfGames = Int(readLine()!)!
if numOfGames > 0 {
    for _ in 0..<numOfGames {
        ticket = generateRandom()
        winningNumbers = generateRandom()
        
        var match = 0
        for index in 0..<6 {
            if (ticket[index] == winningNumbers[index]) {
                match += 1
            }
        }
        
        var prize = 0
        switch match {
        case 1, 2:
            prize = 10
        case 3:
            prize = 100
        case 4:
            prize = 1000
        case 5:
            prize = 5000
        case 6:
            prize = 5000000
        default:
            prize = 0
        }

        if prize > 0 {
            totalMoneyWon += prize
            gamesWon += 1
        }
        
        if prize == 5000000 {
            gamesMatchAll6Nums += 1
        }
    }
}

totalTicketCost = numOfGames * 4
print("The number of games won any money: \(gamesWon)")
print("The number of games matched all 6 numbers: \(gamesMatchAll6Nums)")
print("Total money won: $\(totalMoneyWon)")
print("Total ticket cost: $\(totalTicketCost)")
print("Profit/Loss (won-cost): $\(totalMoneyWon - totalTicketCost)")



