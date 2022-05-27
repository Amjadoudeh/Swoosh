import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.cornerRadius = 10
        layer.borderColor =
            UIColor.white.cgColor
    }
}
