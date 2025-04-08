import SwiftUI

struct ScreenshotSecureRepresentableView<ProtectView: View, ShowView: View>: UIViewRepresentable {
    let viewToProtect: ProtectView
    let viewToShow: ShowView?
    
    func makeUIView(context: Context) -> ScreenshotSecureView {
        return ScreenshotSecureView()
    }
    
    func updateUIView(_ uiView: ScreenshotSecureView, context: Context) {
        let protectControllerView = UIHostingController(rootView: viewToProtect).view
        uiView.viewToProtect = protectControllerView
        
        if let viewToShow {
            let showControllerView = UIHostingController(rootView: viewToShow).view
            uiView.viewToShow = showControllerView
        }
    }
}
