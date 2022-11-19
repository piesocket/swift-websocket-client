//
//  PieSocketException.swift
//  basic-app
//
//  Created by Anand Singh on 18/11/22.
//
import Foundation

public enum PieSocketException: Error {
    case ClusterIdNotSet
    case ApiKeyNotSet
    case NeitherJwtNorAuthEndpointFound
    case PausedForFetchingJwt
}
