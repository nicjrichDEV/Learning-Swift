import Cocoa

let tempC = 26.0
let tempF = 78.8

func toFahrenheit(celsius: Double) -> Double {
    return ((celsius * 9) / 5) + 32
}

func toCelsius(fahrenheit: Double) -> Double {
    return ((fahrenheit - 32) * 5) / 9
}

let toF = toFahrenheit(celsius: tempC)
let toC = toCelsius(fahrenheit: tempF)

print("\(tempC) converted to Fahrenheit is \(toF)℉")
print("\(tempF) converted to Celsius is \(toC)℃")
