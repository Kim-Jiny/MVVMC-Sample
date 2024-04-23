//
//  ServiceError.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation

enum ServiceError: Error {
    case urlError
    case networkRequestError
    case impossibleToGetJSONData
    case impossibleToParseJSON
    case impossibleToGetImageData
}
