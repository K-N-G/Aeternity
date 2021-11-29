//
// ModelProtocol.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ModelProtocol: Codable, Hashable {

    public var version: ModelUInt32
    public var effectiveAtHeight: ModelUInt64

    public init(version: ModelUInt32, effectiveAtHeight: ModelUInt64) {
        self.version = version
        self.effectiveAtHeight = effectiveAtHeight
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case version
        case effectiveAtHeight = "effective_at_height"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(version, forKey: .version)
        try container.encode(effectiveAtHeight, forKey: .effectiveAtHeight)
    }
}
