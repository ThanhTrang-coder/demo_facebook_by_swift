//
//  GroupTableCell.swift
//  demoFacebookUI
//
//  Created by T.Trang on 21/12/2023.
//

import UIKit

class GroupTableCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.register(UINib(nibName: "GroupCell", bundle: nil), forCellWithReuseIdentifier: "GroupCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension GroupTableCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCell", for: indexPath) as! GroupCell
        cell.backgroundColor = .blue
        cell.groupAvt.image = UIImage(named: "group image")
        cell.groupAvt.layer.cornerRadius = 10.0
        cell.groupName.text = "Thông báo chung FIT"
        cell.groupName.lineBreakMode = .byWordWrapping
        cell.groupName.numberOfLines = 2
        cell.symbolGroup.image = UIImage(named: "groups")
        cell.symbolBackground.layer.cornerRadius = cell.symbolBackground.frame.height/2
        cell.symbolBackground.translatesAutoresizingMaskIntoConstraints = true
    
        return cell
    }
    
    
}
