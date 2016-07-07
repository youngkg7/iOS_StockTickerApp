//
//  MyTableViewCell.swift
//  ListViewApp_YoungKwon
//
//  Created by Young Kwon on 2/6/16.
//  Copyright © 2016 Young Kwon. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {


    @IBOutlet var cellImage: UIImageView!

    @IBOutlet var cellItemName: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
