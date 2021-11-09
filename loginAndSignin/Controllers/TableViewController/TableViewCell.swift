//
//  TableViewCell.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 09/11/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var employeImage: UIImageView!{
        didSet{
            employeImage.layer.cornerRadius = 10
            employeImage.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var employeNameLabel: UILabel!
    
    @IBOutlet weak var employeJobLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}



    // MARK:- Configuration -

    extension TableViewCell {
        func Config (_ person: Employe) {
            self.employeImage.image = person.picture
            self.employeNameLabel.text = person.name
            self.employeJobLabel.text = person.job
        }
    }
