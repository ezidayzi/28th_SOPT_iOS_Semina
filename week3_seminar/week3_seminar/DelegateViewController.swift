//
//  DelegateViewController.swift
//  week3_seminar
//
//  Created by 김윤서 on 2021/04/24.
//

import UIKit


protocol SampleProtocol {
    func dataSending(data: String)
}

class DelegateViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    var delegate : SampleProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickDataSendButton(_ sender: Any) {
        if let text = dataTextField.text{
            NotificationCenter.default.post(name: Notification.Name("sample"), object: text)
            delegate?.dataSending(data: text)
        }
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
