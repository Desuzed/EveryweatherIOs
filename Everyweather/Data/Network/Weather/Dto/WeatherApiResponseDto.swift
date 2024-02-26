import Foundation

struct WeatherApiResponseDto: Codable {
    let location: WeatherLocationDto?
    let current: CurrentWeatherDataDto?
    let forecast: ForecastListDto?
}
