//Mark: Experimenting Playground

//Mark: Experiment 1
let myFloatValue: Float = 4.0


//Mark: Experiment 2
let myStringValue = "You're Task Number is: "
let widthValue = 67534
print(myStringValue + String(widthValue))


//Mark: Experiment 3
let myCodeCoverage = 97.3
print("Your code coverage percentage is: \(myCodeCoverage)%")


//Mark: Experiment 4
var optionalName: String? = nil
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello Praveen"
}
print(greeting)


//Mark: Experiment 5
var defaultName: String? = nil
var actualName: String = "This is Praveen"
print("\(defaultName ?? actualName)")


//Mark: Experiment 6
var ingredient: String = "Mutton Pepper Dry"
switch ingredient {
    case "Salt":
        print("Not a salt")
    case ingredient:
        print("This is a food item")
    default:
        print("Not an ingredient")
}


//Mark: Experiment 7
let seriesWinning = [
    "ODI": [2, 3, 5, 7, 11, 13],
    "IPL": [1, 1, 2, 3, 5, 8],
    "Test Series": [1, 4, 9, 6, 2, 5],
]
var largest = 0; var category = ""
for (name, numbers) in seriesWinning {
    for number in numbers {
        if number > largest {
            largest = number; category = name
        }
    }
}
print("How many series we have won out of India? Answer: It is \(largest) and in \(category)")


//Mark: Experiment 8
func personCountry(country: String) -> String {
    return "I am from \(country)."
}
print(personCountry(country: "India"))


//Mark: Experiment 9
func askAnything(anything: [Any]) -> (integerValue: Int, stringValue: String, doubleValue: Double) {
    return (anything[0] as! Int, anything[1] as! String, anything[2] as! Double)
}
let anyValues = askAnything(anything: [70, "This is Praveen", 5.8])
print("\(anyValues.1), My Height: \(anyValues.2) and My Weight: \(anyValues.integerValue)")


//Mark: Experiment 10
func whatsMyWeight() -> Double {
    var weightBeforeAMonth = 65.0
    func weightNow() -> Double {
        weightBeforeAMonth += 5.5
        return weightBeforeAMonth
    }
    return weightNow()
}
print(whatsMyWeight())


//Mark: Experiment 11
var numbers = [10, 13, 7, 65, 31, 49, 53, 14]
let finalResult = numbers.map ({ (number: Int) -> Int in
    //let result = number % 2
    if (number % 2 == 1) {
        return 1
    }
    return 0
})
print(finalResult)




