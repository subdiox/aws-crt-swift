//  Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
//  SPDX-License-Identifier: Apache-2.0.
import AwsCHttp

public enum HttpProxyAuthenticationType {
    case none
    case basic
}

extension HttpProxyAuthenticationType: RawRepresentable, CaseIterable {
    public static var allCases: [HttpProxyAuthenticationType] {
        return [.none, .basic]
    }
    public init(rawValue: aws_http_proxy_authentication_type) {
        let value = Self.allCases.first(where: {$0.rawValue == rawValue})
        self = value ?? .none
    }
    public var rawValue: aws_http_proxy_authentication_type {
        switch self {
        case .none:  return AWS_HPAT_NONE
        case .basic: return AWS_HPAT_BASIC
        }
    }
}

