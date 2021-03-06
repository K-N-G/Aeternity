//
// NameAuctions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NameAuctions: Codable, Hashable {

    public var data: [NameAuction]?
    public var next: String?

    public init(data: [NameAuction]? = nil, next: String? = nil) {
        self.data = data
        self.next = next
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case next
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(next, forKey: .next)
    }
}

