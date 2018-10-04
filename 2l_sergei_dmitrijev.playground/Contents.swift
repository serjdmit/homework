//: Playground - noun: a place where people can play

import UIKit

// Функция, которая определяет чётное, число или нет

func isEven(number: Int) {
    if number % 2 == 0 {
        print("Число \(number) чётное")
    } else {
        print("Число \(number) нечётное")
    }
}

isEven(number: 1)
isEven(number: 2)


// Функция, определяющая, делится ли число без остатка на 3

func dividePerThree(number: Int) {
    if number % 3 == 0 {
        print("Число \(number) делится на 3")
    } else {
        print("Число \(number) не делится на 3")
    }
}

dividePerThree(number: 9)
dividePerThree(number: 8)


// Возрастающий массив из 100 чисел

var numArray = Array(1...100)

// Удаление из массива чётных чисел и чисел, не делящихся на 3

var arrayIndex = 0
for _ in 0..<numArray.count
{
    if numArray[arrayIndex] % 2 == 0 || numArray[arrayIndex] % 3 != 0 {
        numArray.remove(at: arrayIndex)
        arrayIndex -= 1
    }
    arrayIndex += 1
}

print(numArray)




