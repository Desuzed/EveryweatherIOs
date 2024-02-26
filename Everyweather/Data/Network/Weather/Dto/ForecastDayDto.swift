import Foundation

struct ForecastDayDto: Codable {
    let date: String?
    let dateEpoch: Int64?
    let day: DayDto?
    let astro: AstroDto?
    let hour: [HourDto]
}
