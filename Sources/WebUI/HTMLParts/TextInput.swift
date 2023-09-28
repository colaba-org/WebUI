//
//  TextInput.swift
//  
//
//  Created by Artur Gurgul on 18.09.23.
//

import Foundation

public class TextInput: HTMLPart {
    
    public enum InputType: String {
        case email
        case text
        case password
    }
    
    public private(set) var body: Tag
    
    public init(_ name: String, type: InputType = .text, id: String? = nil, class: String? = nil, value: String? = nil, placeholder: String? = nil) {
        body = Tag("input", id: id, class: `class`)
                .attr(key: "type", value: type.rawValue)
                .attr(key: "name", value: name)
        
        if let value {
            body = body.attr(key: "value", value: value)
        }
        
        if let placeholder {
            body = body.attr(key: "placeholder", value: placeholder)
        }
    }
}
