//
//  ViewController.swift
//  week1_semina
//
//  Created by 김윤서 on 2021/04/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func onClickChangeBtn(_ sender: Any) {
        if nameTextField.hasText && numberTextField.hasText{
            if let name = nameTextField.text, let number = numberTextField.text{
                titleLabel.text = "\(name)의 번호는 \(number) 입니다."
            }
        }
    }
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

