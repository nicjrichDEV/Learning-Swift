import Cocoa

let tempC = 26.0
let tempF = 78.8

func toFahrenheit(celsius: Double) -> Double {
    return ((celsius * 9) / 5) + 32
}

func toCelsius(fahrenheit: Double) -> Double {
    return ((fahrenheit - 32) * 5) / 9
}

let convertedToF = toFahrenheit(celsius: tempC)
let convertedToC = toCelsius(fahrenheit: tempF)

print("\(tempC) converted to Fahrenheit is \(convertedToF)℉")
print("\(tempF) converted to Celsius is \(convertedToC)℃")
