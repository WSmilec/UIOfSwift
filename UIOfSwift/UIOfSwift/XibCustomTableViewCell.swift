//
//  XibCustomTableViewCell.swift
//  UITableView
//
//  Created by WangS on 16/11/1.
//  Copyright © 2016年 WangS. All rights reserved.
//

import UIKit

class XibCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var xibLab: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
    }
    
}
