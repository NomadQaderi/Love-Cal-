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
    
    // This function generates random number and result for the That Love Caculator App.
    
    func loveCalculateFunction(yourName: String, theirName: String) -> String {
        let loveScore = arc4random_uniform(101)
        if loveScore > 95 {
            return ("Your Love \(loveScore) % The verdict Stay away from candles - your relationship is hot enough already!")
            
        } else if loveScore > 90 {
            return ("Your Love \(loveScore) %  For you guys, Love is a promise; it is a souvenir, once given never forgotten. Cheers!")
        } else if loveScore > 80 && loveScore < 90 {
            return ("Your Love \(loveScore) % You guys are most alive when you’re in love with each other. Cheers!!")
        } else if loveScore > 60 && loveScore < 80 {
            return ("Your Love \(loveScore) % The chance of this relationship workout between you is not very big, but a relationship is very well possible, if the two of you really want it to, and are prepared to make some sacrifices for it.")
        } else if loveScore < 50 {
            return ("Your Love \(loveScore) % This relationship might work out, but the chance is very small. A successful relationship is possible, but you both have to work on it.")
        }
        return ("Your Love \(loveScore) no love possible between you two 😢")
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
            secondController.myString = loveCalculateFunction(yourName: firstValue, theirName: secondValue)
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
