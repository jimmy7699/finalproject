//
//  UserCourseTableViewCell.swift
//  期末專案
//
//  Created by 邱錦華 on 2018/6/23.
//  Copyright © 2018年 jimmy. All rights reserved.
//

import UIKit

class UserCourseTableViewCell: UITableViewCell {

    @IBOutlet weak var Time: UILabel!
    @IBOutlet weak var weekDayText: UILabel!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var compulsoryText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
