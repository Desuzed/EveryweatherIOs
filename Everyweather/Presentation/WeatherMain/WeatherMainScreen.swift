import SwiftUI

struct WeatherMainScreen: View {

    private let api = WeatherRemoteSource(apiClient: ApiClient())

    var body: some View {
        VStack {
            Text("Hello, World!")
                .foregroundColor(Color("name"))
            Button("Get weather") {
                Task {
                    let result = await api.fetchForecastData(query: "Moscow", lang: "ru")
                    print(result)
                }
            }
        }
    }
}

#Preview {
    WeatherMainScreen()
}
