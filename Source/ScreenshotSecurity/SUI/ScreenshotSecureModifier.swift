import SwiftUI

struct ScreenshotSecureModifier<ShowView: View>: ViewModifier {
    let viewToShow: ShowView?
    
    func body(content: Content) -> some View {
        ScreenshotSecureRepresentableView(
            viewToProtect: content,
            viewToShow: viewToShow
        ).fixedSize(horizontal: false, vertical: true)
    }
}

extension View {
    public func screenshotSecure<ShowView: View>(viewToShow: ShowView?) -> some View {
        modifier(ScreenshotSecureModifier(viewToShow: viewToShow))
    }
}
