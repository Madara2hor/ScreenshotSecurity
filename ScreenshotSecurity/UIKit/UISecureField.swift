import UIKit

final class UISecureField: UITextField {
    private enum Constants {
        static let secureViewDescription = "CanvasView"
    }
    
    weak var secureContainer: UIView? {
        let secureView = subviews
            .first(where: { type(of: $0).description().contains(Constants.secureViewDescription) })
        secureView?.isUserInteractionEnabled = true
        
        return secureView
    }
    
    override var canBecomeFirstResponder: Bool { false }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.isSecureTextEntry = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func becomeFirstResponder() -> Bool {
        return false
    }
}
