//
//  SecondViewController.swift
//  Love Cal
//
//  Created by NOMAD on 9/16/19.
//  Copyright © 2019 NOMAD. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var displayTextView: UITextField!
    
    
    var myString = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        displayTextView.text = myString
        
//        let fixedWidth = textView.frame.size.width
//        let newSize = textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
//        textView.frame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)


//        let fixedWidth = displayTextView.frame.size.width
//        let newSize = displayTextView.sizeThatFits(CGSize(width: fixedWidth, height:  CGFloat.greatestFiniteMagnitude))
//        displayTextView.frame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)
//
//
//
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
