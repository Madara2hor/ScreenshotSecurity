import UIKit

public class IntrinsicContentHeightView: UIView {
    public override var intrinsicContentSize: CGSize { contentSize }
    
    private var contentSize: CGSize = .zero {
        didSet { invalidateIntrinsicContentSize() }
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        // bounds.width = ширине контейнера из-за модификатора .fixedSize(horizontal: false, vertical: true)
        let targetSize = CGSize(width: bounds.width, height: .zero)
        
        // Размер контента по ширене соответвует bounds.width и по высоте стремится к нулю.
        var newContentSize = systemLayoutSizeFitting(
            targetSize,
            withHorizontalFittingPriority: UILayoutPriority.required,
            verticalFittingPriority: UILayoutPriority.defaultLow
        )
        
        newContentSize.height = ceil(newContentSize.height)
        newContentSize.width = ceil(newContentSize.width)
            
        if contentSize != newContentSize {
            contentSize = newContentSize
        }
    }
}
