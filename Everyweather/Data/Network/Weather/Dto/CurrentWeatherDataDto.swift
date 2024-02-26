import Foundation

struct CurrentWeatherDataDto: Codable {
    let tempC: Float?
    let tempF: Float?
    let condition: ConditionDto?
    let windKph: Float?
    let windMph: Float?
    let pressureMb: Float?
    let pressureIn: Float?
    let precipMm: Float?
    let precipIn: Float?
    let humidity: Int?
    let feelsLikeC: Float?
    let feelsLikeF: Float?
}
