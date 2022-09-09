//
//  SelectedScrollerTableViewCell.swift
//  test
//
//  Created by atul dhiman on 12/04/22.
//

import UIKit

class SelectedScrollerTableViewCell: UITableViewCell {

    @IBOutlet weak var IMG: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
