//
//  FizzBuzz.swift
//  KataFizzBuzz
//
//  Created by Alexandre Freire García on 13/7/16.
//  Copyright © 2016 Alexandre Freire García. All rights reserved.
//

import Foundation

enum Error: ErrorType {
    case Zero, NegativeValue
}

struct FizzBuzz{
    
    func answerForNumber(number: Int) throws -> String {
        if number == 0 {
            throw Error.Zero
        }
        else if number <= 0 {
            throw Error.NegativeValue
        }
        var response = String(number)
        
        if isMultipleOfThree(number) && isMultipleOfFive(number) {
            response = "FizzBuzz"
        }
        else if isMultipleOfThree(number) {
            response = "Fizz"
        }
        
        else if isMultipleOfFive(number) {
            response = "Buzz"
        }
        return response
    }
    
    func isMultipleOfThree(number: Int) -> Bool {
        return number % 3 == 0;
    }
    
    func isMultipleOfFive(number: Int) -> Bool {
        return number % 5 == 0;
    }
}