//
//  CustomTableViewCell.swift
//  
//
//  Created by baophan on 6/22/15.
//
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    internal static let CELL_ID = "CustomTableViewCell"
    
    func setImageWithURL(imgAddress: String) {
        imgView.setImageCacheWithAddress(
            imgAddress,
            placeHolderImage: UIImage(named: "no_image")!, cacheDirName: AppDelegate.CACHE_DIR_NAME)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
