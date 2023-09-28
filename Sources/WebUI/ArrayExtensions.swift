//
//  ArrayExtensions.swift
//  
//
//  Created by Artur Gurgul on 18.09.23.
//

import Foundation

extension Array: Renderable where Element == Renderable {
    public func render() -> String {
        map { $0.render() }.joined()
    }
}
