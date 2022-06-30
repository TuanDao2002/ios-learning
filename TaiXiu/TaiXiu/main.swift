//
//  main.swift
//  TaiXiu
//
//  Created by Tuan Dao on 30/06/2022.
//

import Foundation

var houseMoney = 1000
var playerMoney = 100

print("The house has $\(houseMoney)")
print("The player has $\(playerMoney)")
print("Try your luck to win all money of the house!")

var round = 1
var dice: [Int] = []

while (true) {
    print("Round \(round): ")
    print("How much do you want to bet? ")
    let input = readLine()
    if let bet = input {
        if (bet == "") {
            print("empty input")
            continue;
        }
        if (Int(bet) == nil) {
            print("not a number")
            continue;
        }
        if (Int(bet)! <= 0) {
            print("bet must be greater than 0")
            continue;
        }
        
        let inputBet = Int(bet)!
        if (inputBet > playerMoney) {
            print("You only have $\(playerMoney)")
            continue;
        }
        
        if (inputBet > houseMoney) {
            print("The house only has $\(houseMoney)")
            continue
        }
        
        print("You have bet $\(inputBet)")
        
        print ("Do you want to beg big or small?(big/small)")
        var inputStr = readLine() ?? "small";
        if (inputStr != "big" && inputStr != "small") {
            inputStr = "small"
        }
        
        var sum = 0
        dice = []
        for _ in 1...3{
            let value = Int.random(in: 1...6)
            dice.append(value)
            sum += value
        }
        
        print("The dices are: ", terminator: "")
        for index in 0...2{
            print(dice[index], terminator: " ")
        }
        print("\nThe sum of 3 dices is \(sum)!")
        
        var win = false
        if (dice[0] == dice[1]) && (dice[0] == dice[2]) && (dice[1] == dice[2]) {
            win = false
        } else if (sum >= 4 && sum <= 10 && inputStr == "small") {
            win = true
        } else if (sum >= 11 && sum <= 17 && inputStr == "big") {
            win = true
        }
    
        if (win) {
            playerMoney += inputBet
            houseMoney -= inputBet
            print("You Won $\(inputBet)!")
        } else {
            playerMoney -= inputBet
            houseMoney += inputBet
            print("You Lost $\(inputBet)!")
        }
        
        print("The house has $\(houseMoney)")
        print("The player has $\(playerMoney)")
        
        print("Do you still want continue to play?(true/false)")
        let command = readLine()
        if (command == "true") {
            if (playerMoney == 0) {
                print("You are out of money")
                break
            }
            
            if (houseMoney == 0) {
                print("The house is out of money")
                break
            }
            
            round += 1
            continue
        } else {
            break
        }
    } else {
        print("Cannot read")
    }
}
