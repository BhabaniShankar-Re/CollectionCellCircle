//
//  CollectionViewCell.swift
//  RoundedCell
//
//  Created by Bhabani on 09/02/20.
//  Copyright © 2020 Bhabani. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var secondLabel: UILabel = {
        let newlabel = UILabel()
        newlabel.clipsToBounds = true
        newlabel.translatesAutoresizingMaskIntoConstraints = false
        newlabel.textAlignment = NSTextAlignment.center
        return newlabel
    }()
    
    var newLabel: UILabel = {
        let newlabel = UILabel()
        newlabel.clipsToBounds = true
        newlabel.translatesAutoresizingMaskIntoConstraints = false
        newlabel.textAlignment = NSTextAlignment.center
        //newlabel.layer.cornerRadius = newlabel.
        return newlabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        contentView.addSubview(newLabel)
        contentView.addSubview(secondLabel)
        
        secondLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6).isActive = true
        secondLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -6).isActive = true
        secondLabel.widthAnchor.constraint(equalToConstant: contentView.frame.width/4).isActive = true
        secondLabel.heightAnchor.constraint(equalToConstant: contentView.frame.width/4).isActive = true
        
        secondLabel.layer.cornerRadius = contentView.frame.width/8
        
        newLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        newLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        newLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        newLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true

        newLabel.layer.cornerRadius = self.frame.width/2
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//class customLabel: UILabel{
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.clipsToBounds = true
//        self.layer.cornerRadius = frame.width/2
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}


