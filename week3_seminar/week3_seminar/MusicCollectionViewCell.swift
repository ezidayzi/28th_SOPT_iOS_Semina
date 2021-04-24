//
//  MusicCollectionViewCell.swift
//  week3_seminar
//
//  Created by 김윤서 on 2021/04/24.
//

import UIKit

class MusicCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MusicCollectionViewCell"
    
    @IBOutlet weak var musicImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    
    func setData(imageName : String,
                     title : String,
                     subtitle : String)
        {
            if let image = UIImage(named: imageName)
            {
                musicImageView.image = image
            }
            titleLabel.text = title
            contentLabel.text = subtitle
        }
}
