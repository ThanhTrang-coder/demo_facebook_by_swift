//
//  GroupCell.swift
//  demoFacebookUI
//
//  Created by T.Trang on 17/12/2023.
//

import UIKit

class GroupCell: UICollectionViewCell {

    @IBOutlet weak var groupAvt: UIImageView!
    
    @IBOutlet weak var symbolBackground: UIView!
    
    @IBOutlet weak var symbolGroup: UIImageView!
    
    @IBOutlet weak var groupName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
