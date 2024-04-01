//
//  Utility.swift
//  FootballStats
//
//  Created by Szymon Wnuk on 01/04/2024.
//

import Foundation

struct Utilities {
    
    static let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }()
    
    static func loadStub<D: Decodable>(url: URL) -> D {
        let data = try! Data(contentsOf: url)
        do {
            let d = try jsonDecoder.decode(D.self, from: data)
            return d
        } catch {
            print(error.localizedDescription)
            fatalError()
        }
    }
    
    static let dateYearFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "YYYY"
        return df
    }()
    
}
