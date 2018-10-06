//: Playground - noun: a place where people can play

import UIKit

var str: String = "Hello, playground"
var str1 = ""
var newStr = String()
let constStr = "Hello"

var number:Int = 0
number = Int.max
Int.min
Int64.max
Int32.max
number.bitWidth

UInt.min
print(UInt.max)

var numberD: Double = 0.7777777777777777777
var logic: Bool = true
logic = false

var char: Character = "\n"

char is Character
logic is String

number

var numberStr: String = String(number)

str.first
str.last

var firstNumber: Character = numberStr.first!
var lastNumber = numberStr.last


numberStr.removeFirst()
numberStr.removeLast()
numberStr

let resultNumber = String(firstNumber) + numberStr + String(lastNumber!)
let resultNumberInt = Int(resultNumber)

resultNumber

var array: [String]  = [str]

array[0]

array.append("test")
array.append("test2")
array[1] = ""
array.count
array.remove(at: array.index(of: "test")!)

var dictionary: [Bool: Int] = [:]
dictionary[true] = 10
dictionary[false] = 11
dictionary[true] = 1

var sets: Set<Int> = []
sets.insert(10)
sets.insert(11)
sets.insert(14)
sets.insert(10)
sets.first
print(sets)


