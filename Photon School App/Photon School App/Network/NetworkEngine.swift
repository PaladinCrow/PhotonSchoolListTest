//
//  NetworkEngine.swift
//  Photon School App
//
//  Created by John Stanford on 2/14/24.
//

import Foundation

enum NetworkError: Error {
    case badStatus
    case decodeFail
    case unknown
}

class WebService: Codable {
    func downloadData<T: Codable>(fromURL: String) async -> T? {
        do {
            guard let url = URL(string: fromURL) else { throw NetworkError.unknown }
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let response = response as? HTTPURLResponse else { throw NetworkError.unknown }
            guard response.statusCode >= 200 && response.statusCode < 300 else { throw NetworkError.badStatus }
            guard let decodedResponse = try? JSONDecoder().decode(T.self, from: data) else { throw NetworkError.decodeFail }
            
            return decodedResponse
        } catch NetworkError.badStatus {
            print("Unknown status code")
        } catch NetworkError.decodeFail {
            print("Failed to decode data")
        } catch {
            print("Unknown error")
        }
        
        return nil
    }
}
