//
// AccountAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AccountAPI {

    /**

     - parameter pubkey: (path) The public key of the account 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountByPubkey(pubkey: String, intAsString: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Account?, _ error: Error?) -> Void)) {
        getAccountByPubkeyWithRequestBuilder(pubkey: pubkey, intAsString: intAsString).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /accounts/{pubkey}
     - Get an account by public key
     - parameter pubkey: (path) The public key of the account 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - returns: RequestBuilder<Account> 
     */
    open class func getAccountByPubkeyWithRequestBuilder(pubkey: String, intAsString: Bool? = nil) -> RequestBuilder<Account> {
        var localVariablePath = "/accounts/{pubkey}"
        let pubkeyPreEscape = "\(APIHelper.mapValueToPathItem(pubkey))"
        let pubkeyPostEscape = pubkeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{pubkey}", with: pubkeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "int-as-string": intAsString?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Account>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter pubkey: (path) The public key of the account 
     - parameter hash: (path) The hash of the block - either a keyblock or a microblock 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountByPubkeyAndHash(pubkey: String, hash: String, intAsString: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Account?, _ error: Error?) -> Void)) {
        getAccountByPubkeyAndHashWithRequestBuilder(pubkey: pubkey, hash: hash, intAsString: intAsString).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /accounts/{pubkey}/hash/{hash}
     - Get an account by public key after the block indicated by hash. Can be either a micro block or a keyblock hash
     - parameter pubkey: (path) The public key of the account 
     - parameter hash: (path) The hash of the block - either a keyblock or a microblock 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - returns: RequestBuilder<Account> 
     */
    open class func getAccountByPubkeyAndHashWithRequestBuilder(pubkey: String, hash: String, intAsString: Bool? = nil) -> RequestBuilder<Account> {
        var localVariablePath = "/accounts/{pubkey}/hash/{hash}"
        let pubkeyPreEscape = "\(APIHelper.mapValueToPathItem(pubkey))"
        let pubkeyPostEscape = pubkeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{pubkey}", with: pubkeyPostEscape, options: .literal, range: nil)
        let hashPreEscape = "\(APIHelper.mapValueToPathItem(hash))"
        let hashPostEscape = hashPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{hash}", with: hashPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "int-as-string": intAsString?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Account>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter pubkey: (path) The public key of the account 
     - parameter height: (path) The height 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountByPubkeyAndHeight(pubkey: String, height: Int, intAsString: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Account?, _ error: Error?) -> Void)) {
        getAccountByPubkeyAndHeightWithRequestBuilder(pubkey: pubkey, height: height, intAsString: intAsString).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /accounts/{pubkey}/height/{height}
     - Get an account by public key after the opening key block of the generation at height
     - parameter pubkey: (path) The public key of the account 
     - parameter height: (path) The height 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - returns: RequestBuilder<Account> 
     */
    open class func getAccountByPubkeyAndHeightWithRequestBuilder(pubkey: String, height: Int, intAsString: Bool? = nil) -> RequestBuilder<Account> {
        var localVariablePath = "/accounts/{pubkey}/height/{height}"
        let pubkeyPreEscape = "\(APIHelper.mapValueToPathItem(pubkey))"
        let pubkeyPostEscape = pubkeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{pubkey}", with: pubkeyPostEscape, options: .literal, range: nil)
        let heightPreEscape = "\(APIHelper.mapValueToPathItem(height))"
        let heightPostEscape = heightPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{height}", with: heightPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "int-as-string": intAsString?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Account>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter pubkey: (path) The public key of the account 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPendingAccountTransactionsByPubkey(pubkey: String, intAsString: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SignedTxs?, _ error: Error?) -> Void)) {
        getPendingAccountTransactionsByPubkeyWithRequestBuilder(pubkey: pubkey, intAsString: intAsString).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /accounts/{pubkey}/transactions/pending
     - Get pending account transactions by public key
     - parameter pubkey: (path) The public key of the account 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - returns: RequestBuilder<SignedTxs> 
     */
    open class func getPendingAccountTransactionsByPubkeyWithRequestBuilder(pubkey: String, intAsString: Bool? = nil) -> RequestBuilder<SignedTxs> {
        var localVariablePath = "/accounts/{pubkey}/transactions/pending"
        let pubkeyPreEscape = "\(APIHelper.mapValueToPathItem(pubkey))"
        let pubkeyPostEscape = pubkeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{pubkey}", with: pubkeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "int-as-string": intAsString?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SignedTxs>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
