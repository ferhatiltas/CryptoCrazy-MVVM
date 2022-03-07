//
//  CyrptoTableViewCell.swift
//  CryptoCrazy
//
//  Created by ferhatiltas on 6.03.2022.
//

import UIKit

class CyrptoTableViewCell: UITableViewCell {

    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
