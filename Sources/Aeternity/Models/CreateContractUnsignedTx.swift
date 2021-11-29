//
// CreateContractUnsignedTx.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateContractUnsignedTx: Codable, Hashable {

    /** Base64Check encoded tagged byte array */
    public var tx: String
    /** Base58Check encoded tagged pubkey */
    public var contractId: String

    public init(tx: String, contractId: String) {
        self.tx = tx
        self.contractId = contractId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tx
        case contractId = "contract_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(tx, forKey: .tx)
        try container.encode(contractId, forKey: .contractId)
    }
}

