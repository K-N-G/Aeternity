//
// ValidateByteCodeInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ValidateByteCodeInput: Codable, Hashable {

    /** Prefixed (cb_) Base64Check encoded byte array */
    public var bytecode: String
    /** Sophia contract source code */
    public var source: String
    public var options: CompileOpts

    public init(bytecode: String, source: String, options: CompileOpts) {
        self.bytecode = bytecode
        self.source = source
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bytecode
        case source
        case options
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(bytecode, forKey: .bytecode)
        try container.encode(source, forKey: .source)
        try container.encode(options, forKey: .options)
    }
}

