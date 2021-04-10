//
//  PurpleViewController.swift
//  week1_semina
//
//  Created by 김윤서 on 2021/04/03.
//

import UIKit

class PurpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
    }
    
    @IBOutlet var messageLabel: UILabel!
    var message : String?
    
    @IBAction func onClickBackBtn(_ sender: Any) {
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    

    func setLabel(){
        if let msg = message{
            messageLabel.text = msg
        }
    }
    
}
