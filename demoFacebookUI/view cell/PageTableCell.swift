//
//  PageTableCell.swift
//  demoFacebookUI
//
//  Created by T.Trang on 21/12/2023.
//

import UIKit

var pageData:[Page] = [
    Page(symbolPage: "video page", pageName: "Video"),
    Page(symbolPage: "memories", pageName: "Memories"),
    Page(symbolPage: "saved", pageName: "Saved"),
    Page(symbolPage: "groups", pageName: "Groups"),
    Page(symbolPage: "marketplace page", pageName: "Marketplace"),
    Page(symbolPage: "friends", pageName: "Friends"),
    Page(symbolPage: "feeds", pageName: "Feeds"),
    Page(symbolPage: "dating", pageName: "Dating"),
]

class PageTableCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var seeMoreBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.register(UINib(nibName: "PageCell", bundle: nil), forCellWithReuseIdentifier: "PageCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension PageTableCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pageData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PageCell", for: indexPath) as! PageCell
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 10.0
        cell.layer.shadowColor = UIColor.blue.cgColor
        cell.layer.shadowOpacity = 0.3
        cell.layer.shadowOffset = .zero
        cell.symbolPage.image = UIImage(named: pageData[indexPath.row].symbolPage)
        cell.pageName.text = pageData[indexPath.row].pageName
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: ((viewWithTag(11)?.frame.width)! - 9)/2, height: 82)
    }
}
