//
// PeerConnections.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PeerConnections: Codable, Hashable {

    public var inbound: ModelUInt32
    public var outbound: ModelUInt32

    public init(inbound: ModelUInt32, outbound: ModelUInt32) {
        self.inbound = inbound
        self.outbound = outbound
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inbound
        case outbound
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(inbound, forKey: .inbound)
        try container.encode(outbound, forKey: .outbound)
    }
}

