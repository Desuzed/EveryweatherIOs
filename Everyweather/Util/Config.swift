import Foundation

struct Config {
    static var weatherApiKey: String = ApiKeys.weatherApiKey
    static let weatherBaseUrl = "https://api.weatherapi.com/v1/"

    static let geoApiKey: String = ApiKeys.geoApiKey
    static let geoApiBaseUrl = "https://api.locationiq.com/v1/"

    static let googleMapsKey : String = ApiKeys.googleMapsKey

}
