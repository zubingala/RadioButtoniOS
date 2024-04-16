//
//  RadioButton.swift
//  RadioButton
//
//  Created by Zubin Gala on 15/04/24.
//

import UIKit

class RadioButton: UIView {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet private weak var titleLabel: UILabel!
    
    var isChecked: Bool = false {
        didSet {
            updateButtonImage()
        }
    }
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    var checkedImage = UIImage(resource: .selectedRadio)
    var uncheckedImage = UIImage(resource: .radioNotSelected)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "RadioButton", bundle: bundle)
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            view.frame = bounds
            addSubview(view)
        }
        updateButtonImage()
    }
    
    private func updateButtonImage() {
        let image = isChecked ? checkedImage : uncheckedImage
        button.setImage(image, for: .normal)
    }
}

