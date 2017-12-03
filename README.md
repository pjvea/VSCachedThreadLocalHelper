# VSCachedThreadLocalHelper

VSCachedThreadLocalHelper is a helper class that creates cached thread local objects. It is most commonly used for DateFormatters. That way your DateFormatters don't have to be reallocated every time you want to use them.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

VSCachedThreadLocalHelper is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'VSCachedThreadLocalHelper'
```

## Usage

This is most comonnly used to create DateFormatters.

```
func getHoursMinutesPeriodDateFormatter() -> DateFormatter {
    return VSCachedThreadLocalHelper.cachedThreadLocalObjectWithKey(key: "HoursMinutesPeriodDateFormatter") {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        return dateFormatter
    }
}
```

## Author

PJ Vea, @pjvea

Vea Software LLC

## License

VSCachedThreadLocalHelper is available under the MIT license. See the LICENSE file for more info.
