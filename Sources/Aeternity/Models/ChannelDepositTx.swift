//
// ChannelDepositTx.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChannelDepositTx: Codable, Hashable {

    /** Base58Check encoded tagged pubkey */
    public var channelId: String
    /** Base58Check encoded tagged pubkey */
    public var fromId: String
    public var amount: ModelUInt
    public var ttl: ModelUInt64?
    public var fee: ModelUInt
    public var nonce: ModelUInt64
    /** Base58Check encoded tagged hash */
    public var stateHash: String
    public var round: ModelUInt64

    public init(channelId: String, fromId: String, amount: ModelUInt, ttl: ModelUInt64? = nil, fee: ModelUInt, nonce: ModelUInt64, stateHash: String, round: ModelUInt64) {
        self.channelId = channelId
        self.fromId = fromId
        self.amount = amount
        self.ttl = ttl
        self.fee = fee
        self.nonce = nonce
        self.stateHash = stateHash
        self.round = round
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case channelId = "channel_id"
        case fromId = "from_id"
        case amount
        case ttl
        case fee
        case nonce
        case stateHash = "state_hash"
        case round
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(channelId, forKey: .channelId)
        try container.encode(fromId, forKey: .fromId)
        try container.encode(amount, forKey: .amount)
        try container.encodeIfPresent(ttl, forKey: .ttl)
        try container.encode(fee, forKey: .fee)
        try container.encode(nonce, forKey: .nonce)
        try container.encode(stateHash, forKey: .stateHash)
        try container.encode(round, forKey: .round)
    }
}

