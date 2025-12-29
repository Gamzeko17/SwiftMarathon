import UIKit


 let appName = "Sandra"
let buildNumber = 1
let isPremium = true

var scanLeft = 8
var dailyLimit = 15
var totalScanCount = 0


totalScanCount += 3
dailyLimit -= 1

print("App Name: \(appName)")
print("Build Number: \(buildNumber)")
print("Premium: \(isPremium)")
print("Total Scan Count: \(totalScanCount)")
print("Daily Limit: \(dailyLimit)")
print("Dinamik Metin : \(scanLeft) . \(dailyLimit)")


// STEP 1
let lesson = "Math"
let status = true
let courseCredit = 4

var score = 95
var numberOfCourses = 5

score -= 10
numberOfCourses += 1

print("Lesson : \(lesson)")
print("Score : \(score)")

print("\(lesson) -> \(status)")

//STEP 2
let name     : String  = "Gamze"
let age      : Int     = 24
let weight   : Double  = 59.5
let graduate : Bool    = true

print("\(name) \(age) yaşında")

//------------------------------------
var number1 : Int    = 19
var number2 : Double = 45.7

var collection = Double(number1) + number2
print("Collection: \(collection)")

var subtraction = number1 - Int(number2)
print("Subtraction : \(subtraction)")

//--------------------------------------
let urunAdi = "MacBook"
var urunAdeti : Int = 18
var urunFiyatı : Double = 33.999

var toplamFiyat = Double(urunAdeti) * urunFiyatı
print("Toplam Kazanç : \(toplamFiyat) TL")


//STEP 3
//String Interpolation:
let isim = "Gamze"
let value = 32

print("İsim: \(isim)")
print("Girilen sayı \(value)'dir ")
print("Girilen sayının iki katı : \(value * 2)'tür")
print("Girilen değer sıfırdan büyük mü  \(value>0)")

//----------------------------------------------------
func square(_ x: Int) -> Int {
    x * x
}

print("Karesi: \(square(value))")

//String Format
let sayi1 = 135.47603
let formatted = String(format: "%.2f", sayi1)
print("sayi1: \(formatted)")

//-----------------------------------------------------
let money = 123.456
let formatted2 = String(format: "%.2f", money)
print("money: \(formatted2)TL")

func valueRounding( moneyValue: Double) -> String {
    "\(String(format: "%.2f", moneyValue))TL"
}
print(valueRounding(moneyValue: 898.1236))
 
//STEP 4

let deneme = Double("12.5") ?? 0
print(deneme)

let deneme2 = Int("10") ?? 0
print(deneme2)

let deneme3 = Int("abc") ?? 0
print(deneme3)



//Example-1
let text = "58"
let number = Int(text)

if let value = number {
    print(value + 5)
} else {
    print("Hatalı giriş")
}

//Example-2
let a2 = Int("43")
let b2 = Int("08")

if let x = a2 , let y = b2 {
    print(x + y)
}else {
    print("Değerler nil")
}


//Example-3
let fiyat = "34.999"

if let price = Double(fiyat) {
    print("\(price)TL")
}else {
    print("Ürün fiyatı hesaplanamadı")
}

//------------ Guard let -------------------
//Example-1
func printNumber(text:String) {
    guard let number = Int(text) else {
        print("Hatalı giriş")
        return
    }
    
    print(number * 5)
}

printNumber(text: "60")
printNumber(text: "abc")

//Example-2
func calculateTotal(priceText:String, quantityText: String) {
    guard let price = Double(priceText),
          let quantity = Int(quantityText) else {
        print("Hatalı giriş")
        return
    }
    
    print("Toplam: \(price * Double(quantity))")
    
}
calculateTotal(priceText: "47.875", quantityText: "3")

//Example-3
func login(userName:String?, password:String?){
    guard let kullaniciAdi = userName, let sifre = password else{
        print("Eksik Bilgi")
        return
    }
    print("Başarılı giriş yapıldı.")
}
login(userName: "Gamze koca", password: "1234")
 

if let number = Int("42") {
    print(number)
} else {
    print("Hatalı")
}
 

//Soru1
let value4 = Int("25")
if let number2 = value4 {
    print(number2 + 5)
} else {
    print("Hata")
}

//Soru2
let value2 = Int("abc")
if let deger = value2 {
    print(deger)
} else {
    print("Geçersiz")
}

//Soru3
func test (_ text: String) {
    guard let number = Int(text) else {
        print("Hatalı")
        return
    }
    print(number * 2)
}
test("10")
test("xyz")

//Soru5
func example(_ text2: String){
    guard let number3 = Int(text2) else {
        print("Hatalı")
        return
    }
    print(number3)
}

//Soru6
let a = Int("10")
let b = Int("20")

if let x = a , let y = b {
    print(x + y)
}

//Soru8
let price = Double("12.5") ?? 0
print(price)

















