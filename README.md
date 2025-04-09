# ScreenshotSecurity

<p align="left">
    <a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/language-Swift_5-green" alt="Swift5" /></a>
 <img src="https://img.shields.io/badge/platform-iOS-blue.svg?style=flat" alt="Platform iOS" />
 <a href="https://github.com/MobileUpLLC/Utils/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-green" alt="License: MIT" /></a>
<img src="https://img.shields.io/badge/SPM-compatible-green" alt="SPM Compatible">
</p>

ScreenshotSecurity - it's just a view that can help you hide private conent during screenshot or screen record

## How to use
### UIKit

```Swift
final class CredicCardViewController: UIViewController {
    ...
    let screenshotSecureView = ScreenshotSecureView()
    let creditCardNumber = UITextField()
    let blurView = BlurView()
    ... 
    private func setupScreenshotSecureView() {
        screenshotSecureView.viewToProtect = creditCardNumber
        /// > NOTE: `viewToShow` is optional, so you free to not use it - anyway, during screenshot or screen record `viewToProtect` will be hidden 
        screenshotSecureView.viewToShow = blurView
    }
    ...
}
```

### SwiftUI
```Swift
struct CredicCardView: View {
    ...
    var body: some View {
        CreditCardField()
            .screenshotSecure(viewToShow: BlurView())
    }
}
```

## Requirements
- Swift 5.0
- iOS 15.0

## Installation
### SPM
```Swift
dependencies: [
    .package(
        url: "https://gitlab.com/Madara2hor/ScreenshotSecurity", 
        .upToNextMajor(from: "1.0.0")
    )
]
```

## License
ScreenshotSecurity is distributed under the [MIT License](https://github.com/Madara2hor/ScreenshotSecurity/blob/main/LICENSE).
