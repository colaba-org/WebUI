//
//  HTMLBuilder.swift
//  
//
//  Created by Artur Gurgul on 04.09.23.
//

import Foundation

@resultBuilder
public struct HTMLBuilder {
    public static func buildBlock() -> [Renderable] { [] }
}

public extension HTMLBuilder {
    static func buildBlock(_ renderables: Renderable...) -> [Renderable] { renderables }
}
