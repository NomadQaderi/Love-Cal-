//
//  ViewController.swift
//  Love Cal
//
//  Created by NOMAD on 9/16/19.
//  Copyright © 2019 NOMAD. All rights reserved.
//

import UIKit

class FirsViewController: UIViewController {
    
    
    @IBOutlet weak var yourNameTextField: UITextField!
    
    @IBOutlet weak var yourCrushNameTextField: UITextField!
    
    
    var finalValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configueUItextField()
        configueTapGasture()
        
        
        
    }
    
    // This function generates random number for the That Love Caculator App.
    
    func loveFunction(yourName: String, theirName: String) -> String {
        let loveScore = arc4random_uniform(101)
        if loveScore > 80 {
            return ("Your Love \(loveScore) % For you guys, one’s heart is, and always will be for the other")
            
        } else {
            return ("Your Love \(loveScore) %  No love possible")
        }
    }
    
    
    
    //MARK: This function display alert to user if the Your Name TextField and TheirName textFiled is empty.
    
    func alertFunction() {
        let alert = UIAlertController(title: "No Names", message: "Please add your name and your ❤️", preferredStyle: .alert)
        let subAlert = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(subAlert)
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let firstValue = yourNameTextField.text!
        let secondValue = yourCrushNameTextField.text!
        
        let finalValue = firstValue + secondValue
        
        
        if finalValue == "" {
            alertFunction()
        } else if finalValue != "" {
            
            
            let secondController = segue.destination as! SecondViewController
            secondController.myString = loveFunction(yourName: firstValue, theirName: secondValue)
        }
    }
    
    
    
    
    
    @IBAction func calculateButton(_ sender: Any) {
        performSegue(withIdentifier: "segueToSecondScreen", sender: self)
        view.endEditing(true)
        
    }
    
    
    
    
}

extension FirsViewController: UITextFieldDelegate {
    
    private func configueUItextField() {
        yourNameTextField.delegate = self
        yourCrushNameTextField.delegate = self
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
        
    }
    
    
    func configueTapGasture() {
        
        let tapGasture = UITapGestureRecognizer(target: self, action: #selector(FirsViewController.handleTap))
        view.addGestureRecognizer(tapGasture)
        
        
    }
    
    @objc func handleTap(){
        print("View was tapped")
        view.endEditing(true)
        
    }
    
    @IBAction func undwindSege(_ sender: UIStoryboardSegue){
    }
    
}
