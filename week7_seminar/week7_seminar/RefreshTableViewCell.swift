//
//  RefreshTableViewCell.swift
//  week7_seminar
//
//  Created by 김윤서 on 2021/05/29.
//

import UIKit

class RefreshTableViewCell: UITableViewCell {
    static let identifier : String = "RefreshTableViewCell"
    
    @IBOutlet weak var sampleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(data : String)
    {
        sampleLabel.text = data
    }
}
