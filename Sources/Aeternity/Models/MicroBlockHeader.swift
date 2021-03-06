//
// MicroBlockHeader.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MicroBlockHeader: Codable, Hashable {

    /** Base58Check encoded tagged hash */
    public var hash: String
    public var height: ModelUInt64
    /** Base58Check encoded tagged hash */
    public var pofHash: String
    /** Base58Check encoded tagged hash */
    public var prevHash: String
    /** Base58Check encoded tagged hash */
    public var prevKeyHash: String
    /** Base58Check encoded tagged hash */
    public var stateHash: String
    /** Base58Check encoded tagged hash */
    public var txsHash: String
    /** Base58Check encoded tagged value */
    public var signature: String
    public var time: ModelUInt64
    public var version: ModelUInt32

    public init(hash: String, height: ModelUInt64, pofHash: String, prevHash: String, prevKeyHash: String, stateHash: String, txsHash: String, signature: String, time: ModelUInt64, version: ModelUInt32) {
        self.hash = hash
        self.height = height
        self.pofHash = pofHash
        self.prevHash = prevHash
        self.prevKeyHash = prevKeyHash
        self.stateHash = stateHash
        self.txsHash = txsHash
        self.signature = signature
        self.time = time
        self.version = version
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hash
        case height
        case pofHash = "pof_hash"
        case prevHash = "prev_hash"
        case prevKeyHash = "prev_key_hash"
        case stateHash = "state_hash"
        case txsHash = "txs_hash"
        case signature
        case time
        case version
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hash, forKey: .hash)
        try container.encode(height, forKey: .height)
        try container.encode(pofHash, forKey: .pofHash)
        try container.encode(prevHash, forKey: .prevHash)
        try container.encode(prevKeyHash, forKey: .prevKeyHash)
        try container.encode(stateHash, forKey: .stateHash)
        try container.encode(txsHash, forKey: .txsHash)
        try container.encode(signature, forKey: .signature)
        try container.encode(time, forKey: .time)
        try container.encode(version, forKey: .version)
    }
}

