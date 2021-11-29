//
// GAAttachTx.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GAAttachTx: Codable, Hashable {

    /** Base58Check encoded tagged pubkey */
    public var ownerId: String
    public var nonce: ModelUInt64?
    /** Base64Check encoded tagged byte array */
    public var code: String
    public var vmVersion: ModelUInt16
    public var abiVersion: ModelUInt16
    public var gas: ModelUInt64
    public var gasPrice: ModelUInt
    public var fee: ModelUInt
    public var ttl: ModelUInt64?
    /** Base64Check encoded tagged byte array */
    public var callData: String
    /** Contract authorization function hash (hex encoded) */
    public var authFun: String

    public init(ownerId: String, nonce: ModelUInt64? = nil, code: String, vmVersion: ModelUInt16, abiVersion: ModelUInt16, gas: ModelUInt64, gasPrice: ModelUInt, fee: ModelUInt, ttl: ModelUInt64? = nil, callData: String, authFun: String) {
        self.ownerId = ownerId
        self.nonce = nonce
        self.code = code
        self.vmVersion = vmVersion
        self.abiVersion = abiVersion
        self.gas = gas
        self.gasPrice = gasPrice
        self.fee = fee
        self.ttl = ttl
        self.callData = callData
        self.authFun = authFun
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ownerId = "owner_id"
        case nonce
        case code
        case vmVersion = "vm_version"
        case abiVersion = "abi_version"
        case gas
        case gasPrice = "gas_price"
        case fee
        case ttl
        case callData = "call_data"
        case authFun = "auth_fun"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ownerId, forKey: .ownerId)
        try container.encodeIfPresent(nonce, forKey: .nonce)
        try container.encode(code, forKey: .code)
        try container.encode(vmVersion, forKey: .vmVersion)
        try container.encode(abiVersion, forKey: .abiVersion)
        try container.encode(gas, forKey: .gas)
        try container.encode(gasPrice, forKey: .gasPrice)
        try container.encode(fee, forKey: .fee)
        try container.encodeIfPresent(ttl, forKey: .ttl)
        try container.encode(callData, forKey: .callData)
        try container.encode(authFun, forKey: .authFun)
    }
}
