//
//  ViewController.swift
//  week7_seminar
//
//  Created by 김윤서 on 2021/05/29.
//

import UIKit
import Lottie

class ViewController: UIViewController {
//
//    lazy var activityIndicator: UIActivityIndicatorView = {
//        let activityIndicator = UIActivityIndicatorView()
//        activityIndicator.frame = CGRect(x: 0, y: 0,
//                                        width: 100, height: 100)
//
//        activityIndicator.center = self.view.center
//
//        activityIndicator.color = .purple
//        activityIndicator.hidesWhenStopped = true
//        activityIndicator.style = .medium
//
//        activityIndicator.stopAnimating()
//        return activityIndicator
//    }()

    
    lazy var lottieView : AnimationView = {
        let animationView = AnimationView(name: "7thSeminar_Lottie_sample")
        animationView.frame = CGRect(x: 0, y: 0,
                                     width: 100, height: 100)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        animationView.stop()
        animationView.isHidden = true
    
        
        return animationView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(lottieView)
//        self.view.addSubview(activityIndicator)
               
    }
    
    @IBAction func startButtonClicked(_ sender: Any) {
        lottieView.isHidden = false
        lottieView.play()
//        activityIndicator.startAnimating()
    }
    
    @IBAction func finishButtonClicked(_ sender: Any) {
        lottieView.isHidden = true
        lottieView.stop()
//        activityIndicator.stopAnimating()
    }
    
}

