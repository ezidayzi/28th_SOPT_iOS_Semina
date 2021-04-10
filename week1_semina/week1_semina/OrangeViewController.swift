//
//  OrangeViewController.swift
//  week1_semina
//
//  Created by 김윤서 on 2021/04/03.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
    @IBAction func onClickMoveBtn(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "PurpleViewController") as? PurpleViewController else {return}
    
//        self.present(nextVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(nextVC, animated: true)
        
        nextVC.message = messageTextField.text
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
