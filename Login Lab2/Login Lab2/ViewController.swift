//
//  ViewController.swift
//  Login Lab2
//
//  Created by Student on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var forgotUserName: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = userInput.text
//    }
    
    override func prepare(for segue: UIStoryboardSegue , sender: Any?){
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPassword{
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserName{
            segue.destination.navigationItem.title = "Forgot Username"
        } else{
            segue.destination.navigationItem.title = userInput.text
        }
    }
    
    
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "mainPage", sender: sender)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "mainPage", sender: sender)
    }
    
}



