//
//  RadioCell.swift
//  RadioButton
//
//  Created by Zubin Gala on 16/04/24.
//

import UIKit

class RadioCell: UITableViewCell {

    @IBOutlet var radioView: RadioButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
