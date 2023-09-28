//
//  Div.swift
//  
//
//  Created by Artur Gurgul on 18.09.23.
//

import Foundation

public class Div: HTMLPart {
    public private(set) var body: Tag
    public init(id: String? = nil, class: String? = nil, _ text: String? = nil, nodes: [Renderable] = []) {
        body = Tag("div", id: id, class: `class`, text: text, nodes: nodes)
    }
}
