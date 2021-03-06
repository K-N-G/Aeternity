//
// Header.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Header: Codable, Hashable {

    /** Base58Check encoded tagged hash */
    public var hash: String
    public var height: ModelUInt64
    /** Base58Check encoded tagged hash */
    public var prevHash: String
    /** Base58Check encoded tagged hash */
    public var prevKeyHash: String
    /** Base58Check encoded tagged hash */
    public var stateHash: String
    /** Base58Check encoded tagged pubkey */
    public var miner: String
    /** Base58Check encoded tagged pubkey */
    public var beneficiary: String
    public var target: ModelUInt32
    public var pow: [ModelUInt32]?
    public var nonce: ModelUInt64?
    public var time: ModelUInt64
    public var version: ModelUInt32
    /** Base64Check encoded tagged byte array */
    public var info: String
    /** Base58Check encoded tagged hash */
    public var pofHash: String
    /** Base58Check encoded tagged hash */
    public var txsHash: String
    /** Base58Check encoded tagged value */
    public var signature: String

    public init(hash: String, height: ModelUInt64, prevHash: String, prevKeyHash: String, stateHash: String, miner: String, beneficiary: String, target: ModelUInt32, pow: [ModelUInt32]? = nil, nonce: ModelUInt64? = nil, time: ModelUInt64, version: ModelUInt32, info: String, pofHash: String, txsHash: String, signature: String) {
        self.hash = hash
        self.height = height
        self.prevHash = prevHash
        self.prevKeyHash = prevKeyHash
        self.stateHash = stateHash
        self.miner = miner
        self.beneficiary = beneficiary
        self.target = target
        self.pow = pow
        self.nonce = nonce
        self.time = time
        self.version = version
        self.info = info
        self.pofHash = pofHash
        self.txsHash = txsHash
        self.signature = signature
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hash
        case height
        case prevHash = "prev_hash"
        case prevKeyHash = "prev_key_hash"
        case stateHash = "state_hash"
        case miner
        case beneficiary
        case target
        case pow
        case nonce
        case time
        case version
        case info
        case pofHash = "pof_hash"
        case txsHash = "txs_hash"
        case signature
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hash, forKey: .hash)
        try container.encode(height, forKey: .height)
        try container.encode(prevHash, forKey: .prevHash)
        try container.encode(prevKeyHash, forKey: .prevKeyHash)
        try container.encode(stateHash, forKey: .stateHash)
        try container.encode(miner, forKey: .miner)
        try container.encode(beneficiary, forKey: .beneficiary)
        try container.encode(target, forKey: .target)
        try container.encodeIfPresent(pow, forKey: .pow)
        try container.encodeIfPresent(nonce, forKey: .nonce)
        try container.encode(time, forKey: .time)
        try container.encode(version, forKey: .version)
        try container.encode(info, forKey: .info)
        try container.encode(pofHash, forKey: .pofHash)
        try container.encode(txsHash, forKey: .txsHash)
        try container.encode(signature, forKey: .signature)
    }
}

