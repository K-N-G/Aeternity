//
// NameAuction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NameAuction: Codable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case auction = "auction"
        case name = "name"
    }
    public var active: Bool?
    public var hash: String?
    public var info: NameAuctionInfo?
    public var name: String?
    public var previous: [NameInfo]?
    public var status: Status?

    public init(active: Bool? = nil, hash: String? = nil, info: NameAuctionInfo? = nil, name: String? = nil, previous: [NameInfo]? = nil, status: Status? = nil) {
        self.active = active
        self.hash = hash
        self.info = info
        self.name = name
        self.previous = previous
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case active
        case hash
        case info
        case name
        case previous
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(hash, forKey: .hash)
        try container.encodeIfPresent(info, forKey: .info)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(previous, forKey: .previous)
        try container.encodeIfPresent(status, forKey: .status)
    }
}

