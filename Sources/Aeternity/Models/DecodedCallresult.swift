//
// DecodedCallresult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DecodedCallresult: Codable, Hashable {

    public var function: String
    public var result: AnyCodable

    public init(function: String, result: AnyCodable) {
        self.function = function
        self.result = result
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case function
        case result
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(function, forKey: .function)
        try container.encode(result, forKey: .result)
    }
}

