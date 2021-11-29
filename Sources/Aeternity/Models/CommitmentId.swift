//
// CommitmentId.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CommitmentId: Codable, Hashable {

    /** Base58Check encoded tagged value */
    public var commitmentId: String

    public init(commitmentId: String) {
        self.commitmentId = commitmentId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case commitmentId = "commitment_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(commitmentId, forKey: .commitmentId)
    }
}

