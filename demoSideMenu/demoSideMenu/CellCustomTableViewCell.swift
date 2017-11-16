//
//  CellCustomTableViewCell.swift
//  demoSideMenu
//
//  Created by vishal on 10/13/17.
//  Copyright © 2017 vishal. All rights reserved.
//

import UIKit

class CellCustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblCellTExt: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
