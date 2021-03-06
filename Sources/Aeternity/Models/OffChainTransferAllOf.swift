//
// OffChainTransferAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OffChainTransferAllOf: Codable, Hashable {

    /** Base58Check encoded tagged pubkey */
    public var from: String
    /** Base58Check encoded tagged pubkey */
    public var to: String
    public var amount: ModelUInt

    public init(from: String, to: String, amount: ModelUInt) {
        self.from = from
        self.to = to
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case to
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(from, forKey: .from)
        try container.encode(to, forKey: .to)
        try container.encode(amount, forKey: .amount)
    }
}

