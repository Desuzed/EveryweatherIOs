import Foundation

class ApiClient<T: Codable> {

    func fetchData(url: URL) async throws -> Result<T, ApiError> {
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == StatusCodes.success else {
            return Result.failure(ApiError.InvalidResponse)
        }
        do {
            let decoder = JSONDecoder().apply {
                $0.keyDecodingStrategy = .convertFromSnakeCase
            }
            let fetchedData = try decoder.decode(T.self, from: data)
            return Result.success(fetchedData)
        } catch {
            print(error)
            return Result.failure(ApiError.InvalidData)
        }
    }
}

extension JSONDecoder: HasApply {}
