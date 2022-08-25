//
//  ItemCollectionViewCell.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var item_icon: UIImageView!
    @IBOutlet weak var item_title: UILabel!

    override init(frame: CGRect) {
         super.init(frame: frame)
        
     }
  
     required init?(coder: NSCoder) {
         super.init(coder: coder)
     }
}
