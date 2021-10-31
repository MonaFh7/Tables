//
//  Profile.swift
//  Tables
//
//  Created by Mobark Alseif on 25/03/1443 AH.
//

import UIKit

class Profile: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
