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

