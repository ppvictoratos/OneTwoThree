//
//  GameModel.swift
//  SUIOneTwoThree
//
//  Created by Peter Victoratos on 6/25/20.
//  Copyright © 2020 loveshakk. All rights reserved.
//

import Foundation

//should be initialized with the game difficulty
class GameModel {
    let initialValue = 0
    var total = 0
    var initialMode = "Addition"
    var mode = "Addition"
    var userAnswer = 0
    var userScore = 0
    var secondNum = 0
    var difficultyOLD = "Easy"
    var tempNum = 0
    
    init(gameMode: gameMode, difficulty: difficulty) {
    }
    //Resets game
    func reset(){
        total = initialValue
        mode = initialMode
    }
    //Calculates addition
    func addBy() {
        total = total + secondNum
    }
    //Calculates subtraction
    func subtractBy() {
        total = total - secondNum
    }
    //Calculates multiplication
    func multiplyBy() {
        total = total * secondNum
    }
    //Calculates division
    func divideBy() {
        total = total / secondNum
    }
    //Sets answer for problem
    func setValue(number: Int){
        total = number
    }
    //Sets +, /, *, - mode
    func setMode(gameOperator: String){
        mode = gameOperator
    }
    //Sets difficulty level
    func setDifficulty(diff: String){
        difficultyOLD = diff
    }
    //Gets correct total
    func getValue() -> Int {
        return total
    }
        
    func generateProblem(mode: gameMode, diff: difficulty){
        switch mode {
        case (gameMode.addition):
            switch diff {
            case (difficulty.hard):
                total = Int.random(in: 150 ... 999)
                secondNum = Int.random(in: 150 ... 999)
            case (difficulty.medium):
                total = Int.random(in: 100 ... 500)
                secondNum = Int.random(in: 100 ... 500)
            default: //addition easy
                total = Int.random(in: 1 ... 50)
                secondNum = Int.random(in: 1 ... 50)
            }
        case (gameMode.subtraction):
            switch diff {
            case (difficulty.medium):
                total = Int.random(in: 100 ... 500)
                secondNum = Int.random(in: 100 ... 500)
                total = total * secondNum
            case (difficulty.hard):
                total = Int.random(in: 10 ... 50)
                secondNum = Int.random(in: 10 ... 19)
                total = total * secondNum
            default: // div easy
                total = Int.random(in: 100 ... 999)
                secondNum = Int.random(in: 100 ... 999)
                total = total * secondNum
            }
        case (gameMode.multiplication):
            switch diff {
            case (difficulty.medium):
                total = Int.random(in: 10 ... 20)
                secondNum = Int.random(in: 1 ... 12)
                total = total * secondNum
            case (difficulty.hard):
                total = Int.random(in: 10 ... 50)
                secondNum = Int.random(in: 10 ... 19)
                total = total * secondNum
            default: // div easy
                total = Int.random(in: 1 ... 12)
                secondNum = Int.random(in: 1 ... 12)
                total = total * secondNum
            }
        case (gameMode.division):
            switch diff {
            case (difficulty.medium):
                total = Int.random(in: 10 ... 20)
                secondNum = Int.random(in: 1 ... 12)
                total = total * secondNum
            case (difficulty.hard):
                total = Int.random(in: 10 ... 50)
                secondNum = Int.random(in: 10 ... 19)
                total = total * secondNum
            default: // div easy
                total = Int.random(in: 1 ... 12)
                secondNum = Int.random(in: 1 ... 12)
                total = total * secondNum
            }
        }
    }
    
    //Creates problem based on difficulty
    func createProblem(){
        if(difficultyOLD == "Easy"){
            if(mode == "Addition"){
                total = Int.random(in: 1 ... 99)
                secondNum = Int.random(in: 1 ... 99)
            }
            if(mode == "Subtraction"){
                total = Int.random(in: 1 ... 99)
                secondNum = Int.random(in: 1 ... 99)
                if(secondNum > total){
                    tempNum = total
                    total = secondNum
                    secondNum = tempNum
                }
            }
            if(mode == "Multiplication"){
                total = Int.random(in: 1 ... 12)
                secondNum = Int.random(in: 1 ... 12)
            }
            if(mode == "Division"){
                total = Int.random(in: 1 ... 12)
                secondNum = Int.random(in: 1 ... 12)
                total = total * secondNum
            }
        }
        if(difficultyOLD == "Medium"){
            if(mode == "Addition"){
                total = Int.random(in: 100 ... 500)
                secondNum = Int.random(in: 100 ... 500)
            }
            if(mode == "Subtraction"){
                total = Int.random(in: 100 ... 500)
                secondNum = Int.random(in: 100 ... 500)
                if(secondNum > total){
                    tempNum = total
                    total = secondNum
                    secondNum = tempNum
                }
            }
            if(mode == "Multiplication"){
                total = Int.random(in: 10 ... 20)
                secondNum = Int.random(in: 1 ... 12)
            }
            if(mode == "Division"){
                total = Int.random(in: 10 ... 20)
                secondNum = Int.random(in: 1 ... 12)
                total = total * secondNum
            }
        }
        if(difficultyOLD == "Hard"){
            if(mode == "Addition"){
                total = Int.random(in: 100 ... 999)
                secondNum = Int.random(in: 100 ... 999)
            }
            if(mode == "Subtraction"){
                total = Int.random(in: 100 ... 999)
                secondNum = Int.random(in: 100 ... 999)
                if(secondNum > total){
                    tempNum = total
                    total = secondNum
                    secondNum = tempNum
                }
            }
            if(mode == "Multiplication"){
                total = Int.random(in: 10 ... 50)
                secondNum = Int.random(in: 10 ... 19)
            }
            if(mode == "Division"){
                total = Int.random(in: 10 ... 50)
                secondNum = Int.random(in: 10 ... 19)
                total = total * secondNum
            }
        }
    }
    
    func setUserAnswer(number: Int){
        userAnswer = number
    }
    func answerCorrect() -> Bool {
        return (userAnswer == total)
    }
    func sendScore() -> Int{
        return userScore
    }
    
    //Counts number of digits in number
    func digitCount(number: Int) -> Int{
        
        var numberOfDigits = 1
        if (number >= 10000) {
            numberOfDigits += 4
            return numberOfDigits
        }
        
        if (number >= 1000) {
            numberOfDigits += 3
            return numberOfDigits
        }
        
        if (number >= 100) {
            numberOfDigits += 2
            return numberOfDigits
        }
        
        if (number >= 10) {
            numberOfDigits += 1
            return numberOfDigits
        }
        return numberOfDigits
    }
    
    //Function converts numbers into words
    func getWordValue(number: Int) -> String {
        
        var numberOfDigits = digitCount(number: number)
        var num = number
        var word = ""
        var temp = 0
        
        if (numberOfDigits == 0){
            word = "No Number"
            return word
        }
        
        if (numberOfDigits > 3){
            word = "Length more than 4"
            return word
        }
        
        let singleDigits: [String] = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven",  "Eight", "Nine"]
        
        let twoDigits: [String] = ["Ten", "Eleven", "Twelve",  "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen",  "Nineteen"]
        
        let tensMultiple: [String] = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty",  "Ninety"]
        
        let tensPower: [String] = ["Hundred"]
        
        while (numberOfDigits > 0){
            
            if(numberOfDigits == 3){
                temp = num/100
                word += singleDigits[temp] + " "
                word += tensPower[0] + " "
                num = num%100
            }
            if(numberOfDigits == 2){
                if ((number >= 10) && (number < 20)){
                    temp = num%10
                    word += twoDigits[temp] + " "
                    numberOfDigits = numberOfDigits-2
                }
                else{
                    temp = num/10
                    word += tensMultiple[temp] + " "
                    num = num%10
                }
            }
            if(numberOfDigits == 1){
                word += singleDigits[num]
                num = 0
            }
            
            if (numberOfDigits == 0){
                numberOfDigits = numberOfDigits - numberOfDigits
            }
            else if (numberOfDigits != 0){
                numberOfDigits = numberOfDigits - 1
            }
        }
        return word
    }
}
