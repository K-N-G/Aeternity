//
// OffChainWithdrawal.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OffChainWithdrawal: Codable, Hashable {

    public var op: String
    /** Base58Check encoded tagged pubkey */
    public var to: String
    public var amount: ModelUInt

    public init(op: String, to: String, amount: ModelUInt) {
        self.op = op
        self.to = to
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case op
        case to
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(op, forKey: .op)
        try container.encode(to, forKey: .to)
        try container.encode(amount, forKey: .amount)
    }
}

