//
//  ViewController.swift
//  Love Cal
//
//  Created by NOMAD on 9/16/19.
//  Copyright © 2019 NOMAD. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var yourNameTextField: UITextField!
    @IBOutlet weak var yourCrushNameTextField: UITextField!
    
    let loveCalculation = LoveCalculation()
    
    
    var finalValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configueUItextField()
        configueTapGasture()
        
    }
    
    //MARK: This function display alert to user if the Your Name TextField and TheirName textFiled are empty.
    
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
            secondController.myString = loveCalculation.loveCalculateFunction(yourName: firstValue, theirName: secondValue)
            //loveCalculateFunction(yourName: firstValue, theirName: secondValue)
        }
    }
    

    @IBAction func calculateButton(_ sender: Any) {
        performSegue(withIdentifier: "segueToSecondScreen", sender: self)
        view.endEditing(true) }
    
}

extension MainViewController: UITextFieldDelegate {
    
    private func configueUItextField() {
        yourNameTextField.delegate = self
        yourCrushNameTextField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func configueTapGasture() {
        
        let tapGasture = UITapGestureRecognizer(target: self, action: #selector(MainViewController.handleTap))
        view.addGestureRecognizer(tapGasture)
        
    }
    
    @objc func handleTap(){
        print("View was tapped")
        view.endEditing(true)
        
    }
    
    @IBAction func undwindSege(_ sender: UIStoryboardSegue){
        
    }
}


