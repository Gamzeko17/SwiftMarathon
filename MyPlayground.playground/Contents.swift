import UIKit

var greeting = "Hello, playground"

let isPremium = false
let netExpenses : [(name:String , price:Double)] = [
    ("Ev Kirası", 10.100),
    ("Faturalar", 4.000),
    ("Borçlar", 13.250),
    ("Telefon Faturası", 3.30),
    ("Mutfak alışverişi", 3.755)
]

func money(value:Double)-> String{
    String(format: "%.2f TL", value)
}

//Toplam Harcama
var total = 0.0
for netExpense in netExpenses {
    total += netExpense.price
}
print("Toplam Harcama: \(money(value: total)) ")

//Ortalama Harcama
let average = total / Double(netExpenses.count)
print("Ortalama Harcama: \(money(value: average))")

//En Yüksek Gider
if let mostExpensive = netExpenses.max(by: { $0.price < $1.price}) {
    print("En Yüksek Giderim : \(mostExpensive.name) = \(money(value: mostExpensive.price))")
}else {
    print("Array içerisi boştur..")
}

//Bütçe Kontrol
if total > 500 {
    print("Bütçeyi aştın")
} else {
    print("Bütçe aşımı olmamıştır...")
}

//---------
if isPremium == true {
    print("Zenginsin")
} else {
    print("Biraz Dikkatli Harcama Yapmalısın")
}
