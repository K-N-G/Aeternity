//
// ByteCodeInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ByteCodeInput: Codable, Hashable {

    /** Prefixed (cb_) Base64Check encoded byte array */
    public var bytecode: String

    public init(bytecode: String) {
        self.bytecode = bytecode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bytecode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(bytecode, forKey: .bytecode)
    }
}

