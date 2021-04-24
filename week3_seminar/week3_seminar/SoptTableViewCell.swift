//
//  SoptTableViewCell.swift
//  week3_seminar
//
//  Created by 김윤서 on 2021/04/24.
//

import UIKit

class SoptTableViewCell: UITableViewCell {
    
    static let identifier = "SoptTableViewCell"
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var downloadButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setData(imageName : String,
                 title: String,
                 subtitle: String)
    {
        if let image = UIImage(named: imageName)
        {
            iconImageView.image = image
        }
        
        titleLabel.text = title
        subtitleLabel.text = subtitle
        
    }
    
}
