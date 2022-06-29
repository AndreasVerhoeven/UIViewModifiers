# UIViewModifiers
A collection of chainable helper methods to initialize in an initializer


## What?
When initializing a UIView with a let, most often you want to do extra configuration on it. This is usually done in the init, but this makes the creation and configuration separate. This package adds chainable helpers to configure views directly.

```
class MyView: UIView {
	let someView = UIView().alpha(0.5).alwaysLight()
	let someOtherView = UIView().tintColor(.systemRed)
}
```

## Methods

UIView:

- `.clipsToBounds()`
- `.userInteractionDisabled()`
- `.userInteractionEnabled`
- `.alpha(_:)`
- `.tintColor(_:)`
- `.tintAdjustmentMode(_:)`
- `.backgroundColor(_:)`
- `.contentMode(_:)`
- `.preservesSuperviewLayoutMargins()`
- `.directionalLayoutMargins()`
- `.interfaceStyle(_:)`
- `.alwaysDark()`
- `.alwaysLight()`
- `with(_:as:)` (e.g. `.with(\.alpha, as: 0.5)` )
- `with { view in }` (.e.g ` .with { $0.frame = .zero }` )

UILabel:

- `.adjustsFontSizeToFitWidth()`
- `.lineBreakStrategy(_:)`
