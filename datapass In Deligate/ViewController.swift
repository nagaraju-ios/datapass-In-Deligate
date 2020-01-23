//
//  ViewController.swift
//  datapass In Deligate
//
//  Created by THOTA NAGARAJU on 11/18/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class ViewController: UIViewController,datapass {
    var name1 = String()
    var name2 = String()
    var yPos = 100
    var label1:UILabel!
    var label2:UILabel!
    
    func sendData(firstName: String, lastName: String) {
        
        name1 = firstName
        yPos = yPos+50
        label1 = UILabel()
        label1.frame = CGRect(x: 40, y: yPos, width: 150, height: 30)
        label1.backgroundColor = .red
        view.addSubview(label1)
        label1.text = name1
    
        
    
        name2 = lastName
        label2 = UILabel()
        label2.frame = CGRect(x: 200, y: yPos, width: 150, height: 30)
        label2.backgroundColor = .cyan
        view.addSubview(label2)
        label2.text = name2
    
    }
    
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func addBtn(_ sender: Any) {
        
        let second = self.storyboard?.instantiateViewController(withIdentifier: "nag") as!
        SecondViewController
       second.delegate = self
        
        present(second, animated: true) {
            
        }
        
        
    }
    
   
    
    
}

