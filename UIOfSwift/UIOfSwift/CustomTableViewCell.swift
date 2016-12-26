//
//  CustomTableViewCell.swift
//  UITableView
//
//  Created by WangS on 16/11/1.
//  Copyright © 2016年 WangS. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    var customLab:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.blue
        customLab = UILabel()
        customLab.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        customLab.textColor = UIColor.red
        customLab.font = UIFont.systemFont(ofSize: 18)
        self.addSubview(customLab)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
