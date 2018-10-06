import Foundation

// Определение пола
enum Sex {
    case Man
    case Woman
}

// Протокол создания покупателя
protocol BuyerProtocol {
    var name: String {get set}
    var age: Double {get set}
    var goodsCount: Int {get set}
    var sex: Sex {get set}
    
    init (name: String, age: Double, goodsCount: Int, sex: Sex)
    mutating func createBuyer() -> [Any]
}

// Протокол создания очереди
protocol Queueable {
    
}

// Создание покупателя
struct Buyer: BuyerProtocol {
    var name: String = "Sergei"
    var age: Double
    var goodsCount: Int
    var sex: Sex
    private var buyer: [Any]
    
    init (name: String, age: Double, goodsCount: Int, sex: Sex) {
        self.name = name
        self.age = age
        self.goodsCount = goodsCount
        self.sex = sex
        self.buyer = [name, age, goodsCount, sex]
    }
    
    mutating func createBuyer() -> [Any] {
        buyer = [name, age, goodsCount, sex]
        return buyer
    }
}

let buyer1 = Buyer(name: "Sergei", age: 25, goodsCount: 4, sex: .Man)
let buyer2 = Buyer(name: "Pavel", age: 25, goodsCount: 4, sex: .Man)
let buyer3 = Buyer(name: "Maria", age: 25, goodsCount: 4, sex: .Man)
let buyer4 = Buyer(name: "Sasha", age: 25, goodsCount: 4, sex: .Man)
let buyer5 = Buyer(name: "Anna", age: 25, goodsCount: 4, sex: .Man)
let buyer6 = Buyer(name: "Dima", age: 25, goodsCount: 4, sex: .Man)

print(buyer1)


