//
//  IsEmptyOrNil.swift
//  UIViewModifiers
//
//  Created by Andreas Verhoeven on 13/05/2021.
//

import UIKit

extension UIView: PropertySettable {
}

extension UIView {
	/// Sets this view to hidden and is chainable
	func hidden() -> Self { with(\.isHidden, as: true) }
	
	/// Clips this view to its bound and is chainable
	func clipsToBounds() -> Self { with(\.clipsToBounds, as: true) }
	
	/// Sets this view's user interaction to disabled and is chainable
	func userInteractionDisabled() -> Self { with(\.isUserInteractionEnabled, as: false) }
	
	//// sets this view's user interaction to enabled and is chainable
	func userInteractionEnabled() -> Self { with(\.isUserInteractionEnabled, as: true) }
	
	/// sets this view's alpha to a certain value and is chainable
	func alpha(_ value: CGFloat) -> Self { with(\.alpha, as: value) }
	
	/// sets this view's tint color to a color and is chainable
	func tintColor(_ color: UIColor) -> Self { with(\.tintColor, as: color) }
	
	/// sets this view's tint adjustment mode to a value and is chainable
	func tintAdjustmentMode(_ mode: UIView.TintAdjustmentMode) -> Self {  with(\.tintAdjustmentMode, as: mode) }
	
	/// sets this view's background color to a color and is chainable
	func backgroundColor(_ color: UIColor) -> Self { with(\.backgroundColor, as: color) }
	
	/// sets this view's content mode to a value and is chainable
	func contentMode(_ value: UIView.ContentMode) -> Self { with(\.contentMode, as: value) }
	
	/// sets this view's preservesSuperviewLayoutMargins to true and is chainable
	func preservesSuperviewLayoutMargins() -> Self { with(\.preservesSuperviewLayoutMargins, as: true) }
	
	/// sets this view's direction layout margins to a value and is chainable
	func directionalLayoutMargins(_ value: NSDirectionalEdgeInsets) -> Self { with(\.directionalLayoutMargins, as: value) }
	
	/// sets this view's overrideUserInterfaceStyle to a value and is chainable
	@available(iOS 13, *)
	func interfaceStyle(_ style: UIUserInterfaceStyle) -> Self { with(\.overrideUserInterfaceStyle, as: style) }
	
	/// sets this view's overrideUserInterfaceStyle to .dark and is chainable
	@available(iOS 13, *)
	func alwaysDark() -> Self { interfaceStyle(.dark) }
	
	/// sets this view's overrideUserInterfaceStyle to .light and is chainable
	@available(iOS 13, *)
	func alwaysLight() -> Self { interfaceStyle(.light) }
	
	private func with<T>(_ keyPath: ReferenceWritableKeyPath<UIView, T>, as value: T) -> Self {
		self[keyPath: keyPath] = value
		return self
	}
}

extension UILabel {
	/// sets this view's  adjustFontSizeToWidth to true and is chainable
	func adjustsFontSizeToFitWidth() -> Self { with(\.adjustsFontSizeToFitWidth, as: true) }
	
	/// sets this view's  lineBreakStrategy to a value and is chainable
	func lineBreakStrategy(_ value: NSLineBreakMode) -> Self { with(\.lineBreakMode, as: value) }
	
	private func with<T>(_ keyPath: ReferenceWritableKeyPath<UILabel, T>, as value: T) -> Self {
		self[keyPath: keyPath] = value
		return self
	}
}
