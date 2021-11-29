//
// ContractAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ContractAPI {

    /**

     - parameter pubkey: (path) Contract pubkey to get proof for 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getContract(pubkey: String, intAsString: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ContractObject?, _ error: Error?) -> Void)) {
        getContractWithRequestBuilder(pubkey: pubkey, intAsString: intAsString).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /contracts/{pubkey}
     - Get a contract by pubkey
     - parameter pubkey: (path) Contract pubkey to get proof for 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - returns: RequestBuilder<ContractObject> 
     */
    open class func getContractWithRequestBuilder(pubkey: String, intAsString: Bool? = nil) -> RequestBuilder<ContractObject> {
        var localVariablePath = "/contracts/{pubkey}"
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

        let localVariableRequestBuilder: RequestBuilder<ContractObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter pubkey: (path) Contract pubkey to get proof for 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getContractCode(pubkey: String, intAsString: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ByteCode?, _ error: Error?) -> Void)) {
        getContractCodeWithRequestBuilder(pubkey: pubkey, intAsString: intAsString).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /contracts/{pubkey}/code
     - Get contract code by pubkey
     - parameter pubkey: (path) Contract pubkey to get proof for 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - returns: RequestBuilder<ByteCode> 
     */
    open class func getContractCodeWithRequestBuilder(pubkey: String, intAsString: Bool? = nil) -> RequestBuilder<ByteCode> {
        var localVariablePath = "/contracts/{pubkey}/code"
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

        let localVariableRequestBuilder: RequestBuilder<ByteCode>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter pubkey: (path) Contract pubkey to get proof for 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getContractPoI(pubkey: String, intAsString: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PoI?, _ error: Error?) -> Void)) {
        getContractPoIWithRequestBuilder(pubkey: pubkey, intAsString: intAsString).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /contracts/{pubkey}/poi
     - Get a proof of inclusion for a contract
     - parameter pubkey: (path) Contract pubkey to get proof for 
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - returns: RequestBuilder<PoI> 
     */
    open class func getContractPoIWithRequestBuilder(pubkey: String, intAsString: Bool? = nil) -> RequestBuilder<PoI> {
        var localVariablePath = "/contracts/{pubkey}/poi"
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

        let localVariableRequestBuilder: RequestBuilder<PoI>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter contractCallTx: (body)  
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postContractCall(contractCallTx: ContractCallTx, intAsString: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UnsignedTx?, _ error: Error?) -> Void)) {
        postContractCallWithRequestBuilder(contractCallTx: contractCallTx, intAsString: intAsString).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /debug/contracts/call
     - Get a contract_call transaction object
     - parameter contractCallTx: (body)  
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - returns: RequestBuilder<UnsignedTx> 
     */
    open class func postContractCallWithRequestBuilder(contractCallTx: ContractCallTx, intAsString: Bool? = nil) -> RequestBuilder<UnsignedTx> {
        let localVariablePath = "/debug/contracts/call"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: contractCallTx)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "int-as-string": intAsString?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UnsignedTx>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter contractCreateTx: (body)  
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postContractCreate(contractCreateTx: ContractCreateTx, intAsString: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: CreateContractUnsignedTx?, _ error: Error?) -> Void)) {
        postContractCreateWithRequestBuilder(contractCreateTx: contractCreateTx, intAsString: intAsString).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /debug/contracts/create
     - Get a contract_create transaction object
     - parameter contractCreateTx: (body)  
     - parameter intAsString: (query) If this flag is set to true, the response will have all integers set as strings (optional, default to false)
     - returns: RequestBuilder<CreateContractUnsignedTx> 
     */
    open class func postContractCreateWithRequestBuilder(contractCreateTx: ContractCreateTx, intAsString: Bool? = nil) -> RequestBuilder<CreateContractUnsignedTx> {
        let localVariablePath = "/debug/contracts/create"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: contractCreateTx)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "int-as-string": intAsString?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateContractUnsignedTx>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}