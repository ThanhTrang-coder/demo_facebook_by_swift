//
//  ProfileCell.swift
//  demoFacebookUI
//
//  Created by T.Trang on 21/12/2023.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var profileBackground: UIView!
    
    @IBOutlet weak var userAvt: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
