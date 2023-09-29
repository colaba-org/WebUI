//
//  File 2.swift
//  
//
//  Created by Artur Gurgul on 29.09.23.
//

import Foundation

public class Webpage: HTMLPart {
    public var body: Tag
    
    public init(@HTMLBuilder _ builder: () -> [Renderable]) {
        body = Tag("html") {
            Tag("head") {
                Tag("style")
            }
            Tag("body", nodes: builder())
        }
    }
}
