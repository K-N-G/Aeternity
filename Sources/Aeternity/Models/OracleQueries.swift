//
// OracleQueries.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OracleQueries: Codable, Hashable {

    public var oracleQueries: [OracleQuery]

    public init(oracleQueries: [OracleQuery]) {
        self.oracleQueries = oracleQueries
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case oracleQueries = "oracle_queries"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(oracleQueries, forKey: .oracleQueries)
    }
}

