//
//  ForEach.swift
//
//
//  Created by Artur Gurgul on 21.09.23.
//

import Foundation

public struct ForEach<T: Sequence>: Renderable {
    private let rendered: String
    
    public init(_ sequence: T, @HTMLBuilder _ builder: (T.Element) -> Renderable) {
        rendered = sequence.map(builder).map { $0.render() }.joined()
    }
    
    public func render() -> String {
        rendered
    }
}
