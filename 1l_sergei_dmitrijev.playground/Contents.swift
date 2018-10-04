import UIKit

//
// Квадратное уравнение
// aх² + bx + c = 0
//
print("*************************** Задание N1 *****************************\n")
// Пожалуйста, введите значения переменных a, b и с

let a: Int = 3
let b: Int = 3
let c: Int = 3

let x1 = Double(-b) + (sqrt(pow(Double(b), 2)) - Double((4 * a * c))) / (2 * Double(a))
let x2 = Double(-b) - (sqrt(pow(Double(b), 2)) - Double((4 * a * c))) / (2 * Double(a))

print("x- равен", x1,"\nx+ равен", x2)

//
// Нахождение площади, периметра и гипотенузы прямоугольного треугольника
//
print("\n\n*************************** Задание N2 *****************************\n")
// Пожалуйста, введите длину катетов треугольника

let catheterA: Int = 3
let catheterB: Int = 4

let hypotenuse = sqrt(pow(Double(catheterA), 2) + pow(Double(catheterB), 2))
let perimeter = Double(catheterA) + Double(catheterB) + hypotenuse
let area = (catheterA * catheterB) / 2

print("Площадь треугольника равна", area, "\nПериметр треугольника равен ", perimeter, "\nГипотенуза треугольника равна", hypotenuse, "\n")


//
// Банковская программа
// Нахождение суммы вклада за 5 лет
//
print("\n\n*************************** Задание N3 *****************************\n")
// Пожалуйста, введите сумму вклада в рублях

var money: Int = 100

// Пожалуйста, введите годовой процент

let percents: Int = 5

var moneyD = Double(money)
var growMoney = Double(money) * Double(percents) / 100

for year in 1...5 {
    moneyD = Double(moneyD) + growMoney
    growMoney = Double(moneyD) * Double(percents) / 100
    print("Сумма за", year, "год равна", NSString(format: "%.2f", moneyD), "рублей")
}




