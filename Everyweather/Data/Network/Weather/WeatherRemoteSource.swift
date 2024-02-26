import Foundation

final class WeatherRemoteSource {

    private let apiClient: ApiClient<WeatherApiResponseDto>
    private static let forecast = "forecast.json"
    private static let queryParam = "q"
    private static let lang = "lang"

    private var baseParams: String {
        return "?key=\(Config.weatherApiKey)&days=7&"
    }

    init(apiClient: ApiClient<WeatherApiResponseDto>) {
        self.apiClient = apiClient
    }

    func fetchForecastData(query: String, lang: String) async -> Result<WeatherApiResponseDto, ApiError> {
        guard let url = URL(string: generateEndpoint (query: query, lang: lang)) else {
            return Result.failure(.InvalidUrl)
        }
        do {
            return try await apiClient.fetchData(url: url)
        } catch {
            print(error)
            return Result.failure(.InvalidData)
        }
    }

    private func generateEndpoint(query: String, lang: String) -> String {
        let endpoint = Config.weatherBaseUrl
        + WeatherRemoteSource.forecast
        + baseParams
        + WeatherRemoteSource.lang + NetworkConst.equal + lang + NetworkConst.ampersand
        + WeatherRemoteSource.queryParam + NetworkConst.equal + query
        print(endpoint)
        return endpoint
    }
}
