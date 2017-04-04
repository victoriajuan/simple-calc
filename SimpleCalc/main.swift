//
//  main.swift
//  SimpleCalc
//
//  Created by Yiran Juan on 4/3/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import Foundation

var factorial = 1
var temp = ""
var input = ""
var middleOperation = false
var counter = 0
var operationResponse = ""

while true {
    while true {
        temp = readLine(strippingNewline: true)!
        input.append(temp + " ")
        
        if temp == "+" || temp == "-" || temp == "*" || temp == "/" || temp == "%" {
            middleOperation = true
        }
        
        if temp == "count" || temp == "avg" || temp == "fact" {
            break
        }
        counter = counter + 1
        
        if middleOperation && counter == 3 {
            break
        }
    }
    
    var inputArray = input.components(separatedBy: " ")
    
    if(middleOperation) {
        operationResponse = inputArray[1]
        switch operationResponse {
        case "+":
            print("\(inputArray[0]) \(operationResponse) \(inputArray[2]) = \(Int(inputArray[0])! + Int(inputArray[2])!)")
        case "-":
            print("\(inputArray[0]) \(operationResponse) \(inputArray[2]) = \(Int(inputArray[0])! - Int(inputArray[2])!)")
        case "*":
            print("\(inputArray[0]) \(operationResponse) \(inputArray[2]) = \(Int(inputArray[0])! * Int(inputArray[2])!)")
        case "/":
            print("\(inputArray[0]) \(operationResponse) \(inputArray[2]) = \(Int(inputArray[0])! / Int(inputArray[2])!)")
        case "%":
            print("\(inputArray[0]) \(operationResponse) \(inputArray[2]) = \(Int(inputArray[0])! % Int(inputArray[2])!)")
        default:
            break
        }
        factorial = 1
        temp = ""
        input = ""
        middleOperation = false
        counter = 0
        operationResponse = ""
        inputArray = []
    } else {
        operationResponse = inputArray[inputArray.count - 2]
        
        switch operationResponse {
        case "count":
            print("count is \(inputArray.count - 2)")
        case "avg":
            var temp = 0
            for i in 1...(inputArray.count - 2) {
                temp = temp + Int(inputArray[i - 1])!
            }
            let avg = temp / (inputArray.count - 2)
            print("average of input is \(avg)")
        case "fact":
            for j in 1...Int(inputArray[0])! {
                factorial = factorial * j
            }
            print("factorial of input is \(factorial)")
        default:
            break
        }
        factorial = 1
        temp = ""
        input = ""
        middleOperation = false
        counter = 0
        operationResponse = ""
        inputArray = []
    }
}


