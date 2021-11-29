//
// DryRunInputItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DryRunInputItem: Codable, Hashable {

    /** Base64Check encoded tagged byte array */
    public var tx: String?
    public var callReq: DryRunCallReq?

    public init(tx: String? = nil, callReq: DryRunCallReq? = nil) {
        self.tx = tx
        self.callReq = callReq
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tx
        case callReq = "call_req"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tx, forKey: .tx)
        try container.encodeIfPresent(callReq, forKey: .callReq)
    }
}

