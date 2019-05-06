//
//  ViewController.swift
//  appnicial
//
//  Created by Aluno on 10/04/2019.
//  Copyright © 2019 ipvc.estg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: properties
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var lbl1: UILabel!
    
    //MARK: actions
    @IBAction func clickButton1(_ sender: UIButton) {
        lbl1.text = "Escreva na caixa de texto."
    }
    
    //MARK: ciclovida
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSLog(NSLocalizedString("mainipvc.message", comment: ""))
        
        txt1.delegate = self as UITextFieldDelegate
    }

    
    //MARK: UITextFieldDelegate
    func textFieldDidEndEditing(_ textField: UITextField) {
        lbl1.text = txt1.text
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

