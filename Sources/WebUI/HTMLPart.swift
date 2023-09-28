//
//  HTMLPart.swift
//  
//
//  Created by Artur Gurgul on 18.09.23.
//

import Foundation

public protocol HTMLPart: Renderable {
    var body: Tag { get }
}

extension HTMLPart {
    public func render() -> String {
        body.render()
    }
    
    public func callAsFunction(@HTMLBuilder _ builder: () -> [Renderable]) -> Tag {
        var ret = self.body
        ret.nodes = builder()
        return ret
    }
}


@propertyWrapper public struct ContextValue<InstanceType, Value> {
    
    public init() {
        
    }
    
    public static subscript(
        _enclosingInstance instance: InstanceType,
        wrapped wrappedKeyPath: KeyPath<InstanceType, Value>,
        storage storageKeyPath: KeyPath<InstanceType, Self>
      ) -> Value {
        get {
            fatalError("trying to access instance")
//            let defaults = UserDefaults.standard
//            let wrapper = instance[keyPath: storageKeyPath]
//            if let value = defaults.object(forKey: wrapper.key.stringValue) as? Value {
//                return value
//            }
//            return wrapper.default
        }
        set {
//            let defaults = UserDefaults.standard
//            let wrapper = instance[keyPath: storageKeyPath]
//            defaults.set(newValue, forKey: wrapper.key.stringValue)
        }
    }
    
    @available(*, unavailable, message: "@ContextValue can only be applied to classes")
    public var wrappedValue: Value {
        get {
            fatalError()
        }
        set {
            fatalError()
        }
    }
    
}
