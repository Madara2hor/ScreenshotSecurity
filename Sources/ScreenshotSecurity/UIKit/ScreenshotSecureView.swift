import UIKit

public final class ScreenshotSecureView: IntrinsicContentHeightView {
    public var viewToProtect: UIView? { didSet { layoutViewToProtect(oldView: oldValue) } }
    public var viewToShow: UIView? { didSet { layoutViewToShow(oldView: oldValue) } }
    
    private let secureContainer = UISecureField().secureContainer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .clear
        
        layoutSecureContainer()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layoutSecureContainer() {
        guard let secureContainer else {
            return
        }
        
        secureContainer.backgroundColor = .clear
        secureContainer.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(secureContainer)
        NSLayoutConstraint.activate([
            secureContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            secureContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            secureContainer.topAnchor.constraint(equalTo: self.topAnchor),
            secureContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    private func layoutViewToProtect(oldView: UIView?) {
        oldView?.removeFromSuperview()
        
        guard let viewToProtect, let secureContainer else {
            return
        }
        
        viewToProtect.backgroundColor = .clear
        viewToProtect.translatesAutoresizingMaskIntoConstraints = false
        
        secureContainer.addSubview(viewToProtect)
        NSLayoutConstraint.activate([
            viewToProtect.leadingAnchor.constraint(equalTo: secureContainer.leadingAnchor),
            viewToProtect.trailingAnchor.constraint(equalTo: secureContainer.trailingAnchor),
            viewToProtect.topAnchor.constraint(equalTo: secureContainer.topAnchor),
            viewToProtect.bottomAnchor.constraint(equalTo: secureContainer.bottomAnchor)
        ])
    }
    
    private func layoutViewToShow(oldView: UIView?) {
        oldView?.removeFromSuperview()
        
        guard let viewToShow else {
            return
        }
        
        viewToShow.backgroundColor = .clear
        viewToShow.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(viewToShow)
        NSLayoutConstraint.activate([
            viewToShow.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            viewToShow.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            viewToShow.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            viewToShow.topAnchor.constraint(equalTo: self.topAnchor)
        ])
        
        guard let secureContainer else {
            return
        }
        
        bringSubviewToFront(secureContainer)
    }
}
