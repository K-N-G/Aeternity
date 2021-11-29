//
// NameAuctionInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NameAuctionInfo: Codable, Hashable {

    public var auctionEnd: Int?
    public var bids: [Int]?
    public var lastBid: NameClaimDetail?

    public init(auctionEnd: Int? = nil, bids: [Int]? = nil, lastBid: NameClaimDetail? = nil) {
        self.auctionEnd = auctionEnd
        self.bids = bids
        self.lastBid = lastBid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case auctionEnd = "auction_end"
        case bids
        case lastBid = "last_bid"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(auctionEnd, forKey: .auctionEnd)
        try container.encodeIfPresent(bids, forKey: .bids)
        try container.encodeIfPresent(lastBid, forKey: .lastBid)
    }
}

