//
//  ClassTableViewCell.swift
//  期末專案
//
//  Created by 邱錦華 on 2018/6/16.
//  Copyright © 2018年 jimmy. All rights reserved.
//

import UIKit

class ClassTableViewCell: UITableViewCell {
    @IBOutlet weak var professorName: UILabel!
    @IBOutlet weak var name: UILabel!

    private let gl=CAGradientLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
        self.layer.insertSublayer(gl, at: 0)
        self.setNeedsLayout()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // update gradient
        gl.frame = self.bounds
    }

}
