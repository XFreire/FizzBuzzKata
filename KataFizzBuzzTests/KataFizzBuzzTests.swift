//
//  KataFizzBuzzTests.swift
//  KataFizzBuzzTests
//
//  Created by Alexandre Freire García on 13/7/16.
//  Copyright © 2016 Alexandre Freire García. All rights reserved.
//

import XCTest
@testable import KataFizzBuzz

class KataFizzBuzzTests: XCTestCase {
    
    func testShouldReturnNumberIfNotDevisibleByThreeAndFive() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual(try! fizzBuzz.answerForNumber(1), "1")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(2), "2")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(4), "4")
    }
    
    func testShouldFizzForMultiplesOfThree() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual(try! fizzBuzz.answerForNumber(3), "Fizz")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(6), "Fizz")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(9), "Fizz")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(24), "Fizz")
    }
    
    func testShouldReturnBuzzForMultipleOfFive() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual(try! fizzBuzz.answerForNumber(5), "Buzz")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(10), "Buzz")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(20), "Buzz")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(25), "Buzz")
    }
    
    func testShouldReturnFizzBuzzForMultipleOfThreeAndFive() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual(try! fizzBuzz.answerForNumber(15), "FizzBuzz")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(30), "FizzBuzz")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(45), "FizzBuzz")
        XCTAssertEqual(try! fizzBuzz.answerForNumber(60), "FizzBuzz")
    }
    
    func testShouldThrowForZero() {
        let fizzBuzz = FizzBuzz()
        do {
           try fizzBuzz.answerForNumber(0)
        }
        catch let error as Error{
            XCTAssertEqual(error, Error.Zero)
        }
        catch {
            XCTFail()
        }
    }
    
    func testShouldThrowForMinus() {
        let fizzBuzz = FizzBuzz()
        do {
            try fizzBuzz.answerForNumber(-2)
        }
        catch let error as Error{
            XCTAssertEqual(error, Error.NegativeValue)
        }
        catch {
            XCTFail()
        }
    }
    
    
}
