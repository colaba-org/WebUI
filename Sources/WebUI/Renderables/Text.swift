//
//  File.swift
//  
//
//  Created by Artur Gurgul on 18.09.23.
//

import Foundation

public struct Text: Renderable {
    let text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public func render() -> String { text }
}
