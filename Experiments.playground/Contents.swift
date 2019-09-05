//Mark: Experimenting Playground

//Mark: Experiment 1 (Float value)
let myFloatValue: Float = 4.0


//Mark: Experiment 2 (Concatinating interger with string using 'String')
let myStringValue = "You're Task Number is: "
let widthValue = 67534
print(myStringValue + String(widthValue))


//Mark: Experiment 3 (Concatinating float with string using brackets)
let myCodeCoverage = 97.3
print("Your code coverage percentage is: \(myCodeCoverage)%")


//Mark: Experiment 4 (If else statement)
var optionalName: String? = nil
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello Praveen"
}
print(greeting)


//Mark: Experiment 5 (Conditional operation)
var defaultName: String? = nil
var actualName: String = "This is Praveen"
print("\(defaultName ?? actualName)")


//Mark: Experiment 6 (Switch case)
var ingredient: String = "Mutton Pepper Dry"
switch ingredient {
    case "Salt":
        print("Not a salt")
    case ingredient:
        print("This is a food item")
    default:
        print("Not an ingredient")
}


//Mark: Experiment 7 (For statement)
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


//Mark: Experiment 8 (Method sample)
func personCountry(_ country: String) -> String {
    return "I am from \(country)."
}
print(personCountry("India"))


//Mark: Experiment 9 (Method sample with parameters)
func askAnything(anything: [Any]) -> (integerValue: Int, stringValue: String, doubleValue: Double) {
    return (anything[0] as! Int, anything[1] as! String, anything[2] as! Double)
}
let anyValues = askAnything(anything: [70, "This is Praveen", 5.10])
print("\(anyValues.1), My Height: \(anyValues.2) and My Weight: \(anyValues.integerValue)")


//Mark: Experiment 10 (Nested function)
func whatsMyWeight() -> Double {
    var weightBeforeAMonth = 65.0
    func weightNow() -> Double {
        weightBeforeAMonth += 5.5
        return weightBeforeAMonth
    }
    return weightNow()
}
print(whatsMyWeight())


//Mark: Experiment 11 (Map function)
var numbers = [10, 13, 7, 65, 31, 49, 53, 14]
let finalResult = numbers.map ({ (number: Int) -> Int in
    //let result = number % 2
    if (number % 2 == 1) {
        return 1
    }
    return 0
})
print(finalResult)


//Mark: Experiment 12 (Simple class creation)
class Industry {
    func detectDomain(_ personName: String, _ domainName: String) -> String {
        return "Hey i am \(personName) and i am from the \(domainName) domain"
    }
}
var industry = Industry()
industry.detectDomain("PraveenKumar", "Mobile Application Development")


//Mark: Experiment 13 (Enum)
enum Shape {
    case triangle, circle, rectangle, oval
    func description() -> String {
        switch self {
        case .triangle:
            return "Triangle"
        case .circle:
            return "Circle"
        case .rectangle:
            return "Rectangle"
        case .oval:
            return "Oval"
        }
    }
    
    func colorOfTheShape() -> String {
        switch self {
        case .triangle:
            return "Red"
        case .circle:
            return "Green"
        case .rectangle:
            return "Black"
        case .oval:
            return "Yellow"
        }
    }
}

let newShape = Shape.rectangle
let newShapeColor = Shape.rectangle.colorOfTheShape()


// Mark: Experiment 14 (Simple protocol)
protocol SampleProtocol {
    var getDescription: String { get }
    mutating func sampleMethod()
}

class SampleClass: SampleProtocol {
    var getDescription: String = "This is a class description"
    func sampleMethod() {
        getDescription += " & Additional string added"
    }
}

var object = SampleClass()
object.sampleMethod()
let protocolObject = object.getDescription
print(protocolObject)


// Mark: Experiment 15 (Simple loop)
var str = "Fakers gonna"

for _ in 1 ... 5 {
    str += " fake"
}

print(str)

// Mark: Experiment 16 (While loop)
var age = 0

while true {
    print("Your age is now \(age)")
    age += 3
    
    if age >= 28 {
        break
    }
}

// Mark: Experiment 17 (Switch statement with range values)

let yourAge: Double = 28

switch yourAge {
case 0...3:
    print("Infancy")
case 4...6:
    print("Early Childhood")
case 7...8:
    print("Middle Childhood")
case 9...11:
    print("Late Childhood")
case 12...20:
    print("Adolescence")
case 21...35:
    print("Early Adulthood")
case 36...50:
    print("Midlife")
case 51...80:
    print("Mature Adulthood")
case 81...Double.infinity:
    print("Late Adulthood")
default:
    print("You have to born to get ages 😉")
}
