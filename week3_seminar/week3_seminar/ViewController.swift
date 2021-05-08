//
//  ViewController.swift
//  week3_seminar
//
//  Created by 김윤서 on 2021/04/24.
//

import UIKit

class ViewController: UIViewController,SampleProtocol {
  

    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickNextButton(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "DelegateViewController") as? DelegateViewController else {return}
        
        NotificationCenter.default.addObserver(self, selector: #selector(dataReceived), name: Notification.Name("sample"), object: nil)
        
        nextVC.delegate = self
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc func dataReceived(notification: NSNotification){
        if let text = notification.object as? String {
            dataLabel.text = text
        }
    }
    
    func dataSending(data: String) {
        dataLabel.text = data
    }
}

