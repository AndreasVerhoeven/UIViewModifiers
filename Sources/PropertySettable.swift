//
//  PropertySettable.swift
//  Demo
//
//  Created by Andreas Verhoeven on 29/06/2022.
//

import UIKit

/// this is a protocol, so that we can have a method in the extension that depends on Self
public protocol PropertySettable: AnyObject {
}

extension PropertySettable {
	/// Sets the value of a property to a given value and returns self
	public func with<T>(_ keyPath: ReferenceWritableKeyPath<Self, T>, as value: T) -> Self {
		self[keyPath: keyPath] = value
		return self
	}

	/// call a __typed__ callback that allows to configure this object. chainable.
	public func with(_ callback: (Self) -> Void) -> Self {
		callback(self)
		return self
	}
}
