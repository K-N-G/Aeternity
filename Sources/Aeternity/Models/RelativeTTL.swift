//
// RelativeTTL.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RelativeTTL: Codable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case delta = "delta"
    }
    public var type: ModelType
    public var value: ModelUInt64

    public init(type: ModelType, value: ModelUInt64) {
        self.type = type
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(value, forKey: .value)
    }
}

