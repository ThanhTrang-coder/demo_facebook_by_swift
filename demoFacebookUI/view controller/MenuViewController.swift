//
//  MenuViewController.swift
//  demoFacebookUI
//
//  Created by T.Trang on 12/12/2023.
//

import UIKit



class MenuViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "TabbarTopCell", bundle: nil), forCellReuseIdentifier: "TabbarTopCell")
        tableView.register(UINib(nibName: "ProfileCell", bundle: nil), forCellReuseIdentifier: "ProfileCell")
        tableView.register(UINib(nibName: "GroupTableCell", bundle: nil), forCellReuseIdentifier: "GroupTableCell")
        tableView.register(UINib(nibName: "PageTableCell", bundle: nil), forCellReuseIdentifier: "PageTableCell")
    }

}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TabbarTopCell", for: indexPath) as! TabbarTopCell
            cell.menuLbl.font = UIFont.boldSystemFont(ofSize: 30.0)
            return cell
        }
        else if (indexPath.row == 1) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
            cell.profileBackground.layer.cornerRadius = 10.0
            cell.profileBackground.layer.shadowColor = UIColor.black.cgColor
            cell.profileBackground.layer.shadowOpacity = 0.3
            cell.profileBackground.layer.shadowOffset = .zero
            cell.userAvt.image = UIImage(named: "user_avatar")
            cell.userAvt.layer.cornerRadius = cell.userAvt.frame.height/2
            cell.userAvt.translatesAutoresizingMaskIntoConstraints = true
            return cell
        }
        else if (indexPath.row == 2) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GroupTableCell", for: indexPath) as! GroupTableCell
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "PageTableCell", for: indexPath) as! PageTableCell
        cell.seeMoreBtn.layer.cornerRadius = 10.0
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 0) {
            return 66
        }
        else if (indexPath.row == 1) {
            return 148
        }
        else if (indexPath.row == 2) {
            return 150
        }
        return 450
    }
    
    
}
