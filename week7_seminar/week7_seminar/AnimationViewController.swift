//
//  AnimationViewController.swift
//  week7_seminar
//
//  Created by 김윤서 on 2021/05/29.
//

import UIKit

class AnimationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBOutlet weak var sampleImageView: UIImageView!
  
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    
    @IBAction func startButtonClicked(_ sender: Any) {
        
        self.imageViewTopConstraint.constant = 400
        UIView.animate(withDuration: 3) {
            
            self.view.layoutIfNeeded()
            self.sampleImageView.alpha = 0.5
//            let scale = CGAffineTransform(scaleX: 2.0, y: 2.0)
//            let rotate = CGAffineTransform(rotationAngle: .pi)
//            let move = CGAffineTransform(translationX: 100, y: 100)
//
//            let combine = scale.concatenating(rotate).concatenating(move)
//            self.sampleImageView.transform = combine
//        } completion: { finished in
//            UIView.animate(withDuration: 2) {
//                self.sampleImageView.transform = .identity
//            }
        }

        
        
    }
    
}
