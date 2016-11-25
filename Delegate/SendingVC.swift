//
//  SendingVC.swift
//  Delegate
//
//  Created by Oleg Pavlichenkov on 25/11/2016.
//  Copyright © 2016 Oleg Pavlichenkov. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidSentData(data: String)
}

class SendingVC: UIViewController {
    
    var delegate: DataSentDelegate? = nil

    @IBOutlet weak var messageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendButtonTapped(_ sender: Any) {
        
        if delegate != nil {
            
            guard let messageText = messageField.text else { return }
            
            delegate?.userDidSentData(data: messageText)
            dismiss(animated: true, completion: nil)
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
