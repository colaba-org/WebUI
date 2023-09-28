//
//  List.swift
//  
//
//  Created by Artur Gurgul on 18.09.23.
//

import Foundation

public class List: HTMLPart {
    public private(set) var body: Tag
    public init(_ texts: [String], id: String? = nil, class: String? = nil) {
        body = Tag("ul", id: id, class: `class`, nodes: texts.map { Tag("li", text: $0) } )
    }
}
