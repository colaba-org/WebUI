//
//  Submit.swift
//  
//
//  Created by Artur Gurgul on 18.09.23.
//

import Foundation

public class Submit: HTMLPart {
    public private(set) var body: Tag
    public init(_ text: String) {
        body = Tag("input")
                .attr(key: "type", value: "submit")
                .attr(key: "value", value: text)
    }
}
