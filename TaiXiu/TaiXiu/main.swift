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
        print("You have bet $\(inputBet)")
        
        print ("Do you want to beg big or small?(big/small)")
        var inputStr = readLine() ?? "small";
        if (inputStr != "big" || inputStr != "small") {
            inputStr = "small"
        }
        
        var sum = 0
        for _ in 1...3{
            let value = Int.random(in: 1...6)
            dice.append(value)
            sum += value
        }
        
        print("The sum of 3 dices is \(sum)!")
        
    } else {
        print("Cannot read")
    }
}
