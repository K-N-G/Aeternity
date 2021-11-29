//
// PubKey.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PubKey: Codable, Hashable {

    /** Base58Check encoded tagged pubkey */
    public var pubKey: String

    public init(pubKey: String) {
        self.pubKey = pubKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pubKey = "pub_key"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(pubKey, forKey: .pubKey)
    }
}

