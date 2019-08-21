//
//  Configurable.swift
//  Configurable
//
//  Created by Thomas Koller on 11.03.19.
//  Copyright © 2019 Tailored Media Gmbh. All rights reserved.
//

import Foundation

public class Configurator {
    @discardableResult
    public static func configure<T>(_ instance: T, with configuration: (T) -> Void) -> T {
        configuration(instance)
        return instance
    }
}

public protocol Configurable: class {}

extension Configurable {
    @discardableResult
    public func configure(with configuration: (Self) -> Void) -> Self {
        Configurator.configure(self, with: configuration)
        
        return self
    }
}

public protocol DefaultConfigurable: Configurable {
    init()
}

extension DefaultConfigurable {
    public init(with configuration: (Self) -> Void) {
        self.init()
        configure(with: configuration)
    }
}
