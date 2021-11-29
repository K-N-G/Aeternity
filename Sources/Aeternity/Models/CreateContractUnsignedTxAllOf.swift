//
// CreateContractUnsignedTxAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateContractUnsignedTxAllOf: Codable, Hashable {

    /** Base58Check encoded tagged pubkey */
    public var contractId: String

    public init(contractId: String) {
        self.contractId = contractId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case contractId = "contract_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(contractId, forKey: .contractId)
    }
}

