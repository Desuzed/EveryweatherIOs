import Foundation

struct HourDto: Codable {
    let timeEpoch: Int64
    let tempC: Float?
    let tempF: Float?
    let condition: ConditionDto?
    let windKph: Float?
    let windMph: Float?
    let windDegree: Int?
    let pressureMb: Float?
    let pressureIn: Float?
    let humidity: Int?
}
