import Foundation

struct DayDto: Codable {
    let maxtempC: Float?
    let maxtempF: Float?
    let mintempC: Float?
    let mintempF: Float?
    let maxwindKph: Float?
    let maxwindMph: Float?
    let totalprecipMm: Float?
    let totalprecipIn: Float?
    let avghumidity: Float?
    let dailyChanceOfRain: Int?
    let condition: ConditionDto?
}
