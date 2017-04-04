//
//  main.swift
//  SimpleCalc
//
//  Created by Yiran Juan on 4/3/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import Foundation


let input = UInt( readLine(strippingNewline: true)! )
let operation = readLine(strippingNewline: true)!
var operationResponse = ""
var inputArray = [Int]()
var factorial = 1
var counter = 0

if input != nil {
    inputArray.append(Int(input!))
    counter = counter + 1
}else {
    operationResponse = operation
}

if inputArray.count == 2 && !operation.isEmpty{
    switch operation {
    case "+":
        print("\(inputArray[0]) \(operation) \(inputArray[1]) = \((inputArray[0]) + (inputArray[1]))")
    case "-":
        print("\(inputArray[0]) \(operation) \(inputArray[1]) = \((inputArray[0]) - (inputArray[1]))")
    case "*":
        print("\(inputArray[0]) \(operation) \(inputArray[1]) = \((inputArray[0]) * (inputArray[1]))")
    case "/":
        print("\(inputArray[0]) \(operation) \(inputArray[1]) = \((inputArray[0]) / (inputArray[1]))")
    case "%":
        print("\(inputArray[0]) \(operation) \(inputArray[1]) = \((inputArray[0]) % (inputArray[1]))")
    default:
        break
    }
}else if inputArray.count == counter && !operation.isEmpty{
    switch operation {
    case "count":
        print("count is \(inputArray.count)")
    case "avg":
        var temp = 0
        for i in 1...inputArray.count {
            temp = temp + inputArray[i-1]
        }
        let avg = temp / inputArray.count
        print("average of input is \(avg)")
    case "fact":
        for i in 1...inputArray[0] {
            factorial = factorial * i
        }
        print("average of input is \(factorial)")
    default:
        break
    }
}
