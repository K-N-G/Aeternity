//
// SophiaBinaryData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SophiaBinaryData: Codable, Hashable {

    public var sophiaType: String
    public var data: String

    public init(sophiaType: String, data: String) {
        self.sophiaType = sophiaType
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sophiaType = "sophia-type"
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sophiaType, forKey: .sophiaType)
        try container.encode(data, forKey: .data)
    }
}

