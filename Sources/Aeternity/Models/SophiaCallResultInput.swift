//
// SophiaCallResultInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SophiaCallResultInput: Codable, Hashable {

    /** (Possibly partial) Sophia contract code/interface */
    public var source: String
    public var options: CompileOpts?
    /** Name of the called function */
    public var function: String
    /** Call result type (ok | revert | error) */
    public var callResult: String
    /** Call result value (ABI encoded data or error string) */
    public var callValue: String

    public init(source: String, options: CompileOpts? = nil, function: String, callResult: String, callValue: String) {
        self.source = source
        self.options = options
        self.function = function
        self.callResult = callResult
        self.callValue = callValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case options
        case function
        case callResult = "call-result"
        case callValue = "call-value"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(source, forKey: .source)
        try container.encodeIfPresent(options, forKey: .options)
        try container.encode(function, forKey: .function)
        try container.encode(callResult, forKey: .callResult)
        try container.encode(callValue, forKey: .callValue)
    }
}
