import UIKit

protocol CarProtocol {  // Протокол для любого автомобиля
    var carId: String {get}
    var model: String {get}
    var price: Double {get}
    var wheels: Int {get}
    var year: Int {get}
    func buy()
}

extension CarProtocol {    // Расширение, описывающее метод включения/выключения двигателя
    func turnOn() {
        print("Running")
    }
}

extension CarProtocol {  // Расширение, описывающее метод открытия/закрытия окон
    func openWindow() {
        print("Окна открыты")
    }
        
}

//  Автомобиль

class Car: CarProtocol {
    var carId: String
    var model: String
    var price: Double
    var wheels: Int = 4
    var year: Int
    
    init(carId: String, model: String, price: Double, year: Int) {
        self.carId = carId
        self.model = model
        self.price = price
        self.year = year
    }
    
    func buy() {
        print("Автомобиль \(carId) продан успешно!")
    }
}

//  Спортивный автомобиль

class SportCar: Car {
    var speed: Double = 250
    var turbo: Bool = true
    
    var mileage: Int
    
    init (carId: String, model: String, price: Double, year: Int, mileage: Int) {
        self.mileage = mileage
        super.init(carId: carId, model: model, price: price, year: year)
    }
}

//  Грузовик

class TrunkCar: Car {
    var hasGoods: Bool = true
    
    var bodyVol: Double
    var trunkFilled: Double
    
    init (carId: String, model: String, price: Double, year: Int, bodyVol: Double, trunkFilled: Double) {
        self.bodyVol = bodyVol
        self.trunkFilled = trunkFilled
        super.init(carId: carId, model: model, price: price, year: year)
    }
}

//   Расширение CustomStringConvertible для любого автомобиля

//extension Car: CustomStringConvertible {
//    var description: String {
//        return "\(model) \(year) года выпуска стоит \(price) евро."
//    }
//}

//   Расширение CustomStringConvertible для спортивного автомобиля

extension SportCar: CustomStringConvertible {
    var description: String {
        return "Автомобиль \(model) может набирать скорость до \(speed) км/ч."
    }
}


//   Расширение CustomStringConvertible для грузовика

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "В грузовике \(model) осталось \(bodyVol - trunkFilled) кубометров свободного места."
    }
}


let car1 = Car(carId: "556TAK", model: "Volvo", price: 5000, year: 2010)

car1.openWindow()
car1.turnOn()
car1.buy()

let sportCar1 = SportCar(carId: "123AAA", model: "Lamborghini", price: 59990, year: 2015, mileage: 100000)

sportCar1.openWindow()
sportCar1.turnOn()
sportCar1.buy()

let trunk = TrunkCar(carId: "987BBB", model: "Man", price: 5000, year: 2005, bodyVol: 5000, trunkFilled: 2300)

trunk.openWindow()
trunk.turnOn()
trunk.buy()
//print(car1)
print(sportCar1)
print(trunk)


