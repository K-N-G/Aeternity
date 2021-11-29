//
// ErrorPos.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ErrorPos: Codable, Hashable {

    public var file: String?
    public var line: Int
    public var col: Int

    public init(file: String? = nil, line: Int, col: Int) {
        self.file = file
        self.line = line
        self.col = col
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case file
        case line
        case col
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(file, forKey: .file)
        try container.encode(line, forKey: .line)
        try container.encode(col, forKey: .col)
    }
}
