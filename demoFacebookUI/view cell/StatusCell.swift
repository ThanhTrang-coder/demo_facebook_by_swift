//
//  StatusCell.swift
//  demoFacebookUI
//
//  Created by T.Trang on 19/12/2023.
//

import UIKit

class StatusCell: UITableViewCell {

    @IBOutlet weak var userAvatar: UIImageView!
    
    @IBOutlet weak var userStatus: UILabel!
    
    @IBOutlet weak var photosImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
