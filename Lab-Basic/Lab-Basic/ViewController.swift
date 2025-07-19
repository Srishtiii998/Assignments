//
//  ViewController.swift
//  Lab-Basic
//
//  Created by Student on 16/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
        // Do any additional setup after loading the view.
    }

 
    @IBAction func set(_ sender: UIButton) {
        label.text = text.text
    }
    
    @IBAction func clear(_ sender: UIButton) {
        label.text = ""
    }
}

