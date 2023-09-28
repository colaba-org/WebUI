//
//  Form.swift
//  
//
//  Created by Artur Gurgul on 18.09.23.
//

import Foundation

public enum FormMethod: String {
    case get, post
}

public class Form: HTMLPart {
    public private(set) var body: Tag
    public init(method: FormMethod) {
        body = Tag("form").attr(key: "method", value: method.rawValue)
    }
}
