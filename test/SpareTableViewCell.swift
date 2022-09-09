//
//  SpareTableViewCell.swift
//  test
//
//  Created by atul dhiman on 12/04/22.
//

import UIKit

class SpareTableViewCell: UITableViewCell {

    @IBOutlet weak var imglabel: UILabel!
    @IBOutlet weak var selectBt: UIButton!
    @IBOutlet weak var imgl: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
