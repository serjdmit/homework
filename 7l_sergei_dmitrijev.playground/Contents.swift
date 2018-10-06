import UIKit

enum ArrayOfNumbersError: Error {
    case arrayIsEmpty
    case wrongIndex
}

// Класс по созданию массива с числами, их добавлению и удалению, а также обращению к элементу

class ArrayOfNumbers {
    var numbers: [Double] = [1, 2, 3]
    
    func push(number: Double){
        self.numbers.append(number)
        print(self.numbers)
    }
    
    func pop() throws -> Double {
        guard self.numbers.count > 1 else {
            throw ArrayOfNumbersError.arrayIsEmpty
        }
        self.numbers.removeLast()
        let number = self.numbers[self.numbers.count - 1]
        print("You removed number \(number).\nNow your array looks like \(self.numbers).")
        return number
    }
    
    func selectByIndex(i: Int) throws {
        guard i >= 0 && i <= (self.numbers.count - 1) else {
            throw ArrayOfNumbersError.wrongIndex
        }
        print("Your number is \(self.numbers[i])")
    }
}

var someNumbers = ArrayOfNumbers()

print(someNumbers.numbers)

someNumbers.push(number: 10)
do {
    try someNumbers.pop()
} catch ArrayOfNumbersError.arrayIsEmpty {
    print("The array is empty")
}

do {
    try someNumbers.selectByIndex(i: 1)
} catch ArrayOfNumbersError.wrongIndex {
    print("Wrong index :(")
}
do {
    try someNumbers.selectByIndex(i: 2)
} catch ArrayOfNumbersError.wrongIndex {
    print("Wrong index :(")
}
do {
    try someNumbers.selectByIndex(i: 0)
} catch ArrayOfNumbersError.wrongIndex {
    print("Wrong index :(")
}
do {
    try someNumbers.selectByIndex(i: -1)
} catch ArrayOfNumbersError.wrongIndex {
    print("Wrong index :(")
}

do {
    try someNumbers.pop()
} catch ArrayOfNumbersError.arrayIsEmpty {
    print("The array is empty")
}
do {
    try someNumbers.pop()
} catch ArrayOfNumbersError.arrayIsEmpty {
    print("The array is empty")
}
do {
    try someNumbers.pop()
} catch ArrayOfNumbersError.arrayIsEmpty {
    print("The array is empty")
}
