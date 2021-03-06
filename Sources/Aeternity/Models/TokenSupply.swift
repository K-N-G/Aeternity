//
// TokenSupply.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TokenSupply: Codable, Hashable {

    public var accounts: ModelUInt?
    public var contracts: ModelUInt?
    public var contractOracles: ModelUInt?
    public var locked: ModelUInt?
    public var oracles: ModelUInt?
    public var oracleQueries: ModelUInt?
    public var pendingRewards: ModelUInt?
    public var total: ModelUInt?

    public init(accounts: ModelUInt? = nil, contracts: ModelUInt? = nil, contractOracles: ModelUInt? = nil, locked: ModelUInt? = nil, oracles: ModelUInt? = nil, oracleQueries: ModelUInt? = nil, pendingRewards: ModelUInt? = nil, total: ModelUInt? = nil) {
        self.accounts = accounts
        self.contracts = contracts
        self.contractOracles = contractOracles
        self.locked = locked
        self.oracles = oracles
        self.oracleQueries = oracleQueries
        self.pendingRewards = pendingRewards
        self.total = total
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accounts
        case contracts
        case contractOracles = "contract_oracles"
        case locked
        case oracles
        case oracleQueries = "oracle_queries"
        case pendingRewards = "pending_rewards"
        case total
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accounts, forKey: .accounts)
        try container.encodeIfPresent(contracts, forKey: .contracts)
        try container.encodeIfPresent(contractOracles, forKey: .contractOracles)
        try container.encodeIfPresent(locked, forKey: .locked)
        try container.encodeIfPresent(oracles, forKey: .oracles)
        try container.encodeIfPresent(oracleQueries, forKey: .oracleQueries)
        try container.encodeIfPresent(pendingRewards, forKey: .pendingRewards)
        try container.encodeIfPresent(total, forKey: .total)
    }
}

