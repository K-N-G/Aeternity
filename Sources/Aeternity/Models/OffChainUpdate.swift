//
// OffChainUpdate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OffChainUpdate: Codable, Hashable {

    public var op: String

    public init(op: String) {
        self.op = op
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case op
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(op, forKey: .op)
    }
}

