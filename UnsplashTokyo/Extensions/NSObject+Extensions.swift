//
//  NSObject+Extensions.swift
//  UnsplashTokyo
//
//  Created by Netzme on 16/01/22.
//

import Foundation
public protocol ClassNameProtocol {
    static var className: String { get }
    var className: String { get }
}

public extension ClassNameProtocol {
    static var className: String {
        return String(describing: self)
    }

    var className: String {
        return type(of: self).className
    }
}

extension NSObject: ClassNameProtocol {}
