# ScreenshotSecurity

## About

ScreenshotSecurity - it's just a view that can help you hide private conent during screenshot or screen record

## How to use
### UIKit

```Swift
let screenshotSecureView = ScreenshotSecureView()
let creditCardNumber = UITextField()
let blurView = BlurView()

private func setupScreenshotSecureView() {
    screenshotSecureView.viewToProtect = creditCardNumber
    /// > NOTE: `viewToShow` is optional, so you free to not use it - anyway, during screenshot or screen record `viewToProtect` will be hidden 
    screenshotSecureView.viewToShow = blurView
}
```

### SwiftUI

```Swift
CreditCardField()
    .screenshotSecure(viewToShow: BlurView())
```

## Install
### SPM
Will be added soon

