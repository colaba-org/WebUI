//
//  Tag.swift
//  
//
//  Created by Artur Gurgul on 18.09.23.
//

import Foundation

public struct Tag: Renderable {
    public var tag: String
    public var id: String?
    public var `class`: String?
    
    var nodes = [Renderable]()
    var attrs = [String: String]()
    
    public init(_ tag: String, id: String? = nil, class: String? = nil, text: String? = nil, nodes: [Renderable] = []) {
        self.tag = tag
        self.id = id
        self.class = `class`
        self.nodes = nodes
        if let text {
            self.nodes.append(Text(text))
        }
    }
    
    public func render() -> String {
        "<\(tag) \(renderId()) \(renderAttrs())>" +
        nodes
            .map { $0.render() }
            .joined() +
        "</\(tag)>"
    }
    
    public func callAsFunction(@HTMLBuilder _ builder: () -> [Renderable]) -> Self {
        var ret = self
        ret.nodes = builder()
        return ret
    }
    
    public func nodes(_ nodes: [Renderable]) -> Self {
        var ret = self
        ret.nodes = nodes
        return ret
    }
    
    public func attr(key: String, value: String) -> Self {
        var ret = self
        ret.attrs[key] = value
        return ret
    }
    
    private func renderAttrs() -> String {
        attrs
            .map { "\($0.0)=\"\($0.1)\"" }
            .joined(separator: " ")
    }
    
    private func renderId() -> String {
        ["id": id, "class": `class`]
            .map { $0.1 == nil ? nil : "\($0.0)=\"\($0.1!)\"" }
            .compactMap { $0 }
            .joined(separator: " ")
    }
}
