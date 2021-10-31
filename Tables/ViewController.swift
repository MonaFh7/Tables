//
//  ViewController.swift
//  Tables
//
//  Created by Mobark Alseif on 25/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {

    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Ali","Mubarak","Aqil"]
    let profileImages = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Profile
        
        cell.name.text = names[indexPath.row]
        cell.profileImage.image = profileImages[indexPath.row]
        
        
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }
    
}

