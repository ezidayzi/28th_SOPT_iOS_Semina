//
//  TextFieldDelegateViewController.swift
//  week3_seminar
//
//  Created by 김윤서 on 2021/04/24.
//

import UIKit

class TextFieldDelegateViewController: UIViewController {

    
    @IBOutlet weak var sampleTextField: UITextField!
    
    @IBOutlet weak var sampleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        sampleTextField.delegate = self
    }
    


}

extension TextFieldDelegateViewController : UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        sampleLabel.text = sampleTextField.text
        return true
    }
    
}
