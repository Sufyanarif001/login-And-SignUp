//
//  CollectionViewCell.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 09/11/2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var employeImageView: UIImageView!
    
    
    @IBOutlet weak var employeNameLabel: UILabel!
    
}

// MARK:- Configuration -

extension CollectionViewCell {
    func Configuration(_ person: Employe) {
        self.employeImageView.image = person.picture
        self.employeNameLabel.text = person.name
    }
}

