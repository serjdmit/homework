import UIKit

enum WindowState {
    case open, close
}

enum EngineRun {
    case running, turnedOff
}

//  Автомобиль

class Car {
    var wheels: Int = 4
    
    let carId: String
    var model: String
    var price: Double
    var windowState: WindowState
    var turnOn: EngineRun
    
    init(carId: String, model: String, price: Double, windowState: WindowState, turnOn: EngineRun) {
        self.carId = carId
        self.model = model
        self.price = price
        self.turnOn = turnOn
        self.windowState = windowState
    }
}

let myCar: Car = Car(carId: "Car1", model: "Toyota", price: 6000.00, windowState: .close, turnOn: .turnedOff)

print("В машине \(myCar.model) окна имеют статус \(myCar.windowState)")

//  Грузовик

class TrunkCar: Car {
    var hasGoods: Bool = true
    
    var bodyVol: Double
    var trunkFilled: Double
    
    init(bodyVol: Double, trunkFilled: Double, carId: String, model: String, price: Double, windowState: WindowState, turnOn: EngineRun) {
        self.bodyVol = bodyVol
        self.trunkFilled = trunkFilled
        super.init(carId: carId, model: model, price: price, windowState: windowState, turnOn: turnOn)
    }
    
    func fillTrunk(fill: Double) {
        trunkFilled = trunkFilled + fill
    }
}

let myCar1: Car = Car(carId: "Car1", model: "BMW", price: 3900.00, windowState: .close, turnOn: .running)
let myTrunkCar: TrunkCar = TrunkCar(bodyVol: 1000, trunkFilled: 300, carId: "TrunkCar1", model: "Vovlo", price: 5000.00, windowState: .open, turnOn: .turnedOff)

myTrunkCar.hasGoods = false
myTrunkCar.wheels = 2
myTrunkCar
myTrunkCar.fillTrunk(fill: 300)
myTrunkCar

print("Кузов \(myTrunkCar.model) заполнен на \(myTrunkCar.trunkFilled) кубометров")

//  Спортивный автомобиль

class SportCar: Car {
    var speed: Double = 250
    var turbo: Bool = true
    
    var mileage: Int
    
    init(mileage: Int, carId: String, model: String, price: Double, windowState: WindowState, turnOn: EngineRun) {
        self.mileage = mileage
        super.init(carId: carId, model: model, price: price, windowState: windowState, turnOn: turnOn)
    }
    
    func speedUpgrade(addSpeed: Double) {
        if(addSpeed > 5) {
            print("За один раз можно добавить только 5 км/ч к скорости")
        } else if((speed + addSpeed) > 300) {
            print("К сожалению, больше 300 км/ч эта модель развить не может")
        } else {
            speed = speed + addSpeed
        }
    }
}

let mySuperCar: SportCar = SportCar(mileage: 8000, carId: "SportCar1", model: "Ferrari", price: 56999.00, windowState: .open, turnOn: .turnedOff)

mySuperCar
mySuperCar.turbo = false
mySuperCar
mySuperCar.wheels
mySuperCar.speedUpgrade(addSpeed: 6)
mySuperCar.speedUpgrade(addSpeed: 3)
mySuperCar.speedUpgrade(addSpeed: 5)

print("Автомобиль \(mySuperCar.model) прокачан до максимальной скорости \(mySuperCar.speed) км/ч")




