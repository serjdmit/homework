import UIKit

enum WindowState {
    case open, close
}

enum EngineRun {
    case running, turnedOff
}

struct Car {
    let model: String
    let year: Int
    let trunkSize: Double
    var turnOn: EngineRun
    var windowState: WindowState
    var trunkFilled: Double
    mutating func fillTrunk(fill: Double) {
        trunkFilled = trunkFilled + fill
    }
}

var car = Car(model: "BMW", year: 2005, trunkSize: 300, turnOn: .running, windowState: .open, trunkFilled: 50)
var truck = Car(model: "Volvo", year: 2010, trunkSize: 9000, turnOn: .turnedOff, windowState: .close, trunkFilled: 850)

car.fillTrunk(fill: 200)
truck.fillTrunk(fill: 50)

print("Модель машины - \(car.model).")
print("Модель грузовика - \(truck.model).")
