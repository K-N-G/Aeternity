//
// APIVersion.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct APIVersion: Codable, Hashable {

    /** API compiler version */
    public var apiVersion: String

    public init(apiVersion: String) {
        self.apiVersion = apiVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case apiVersion = "api-version"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(apiVersion, forKey: .apiVersion)
    }
}
