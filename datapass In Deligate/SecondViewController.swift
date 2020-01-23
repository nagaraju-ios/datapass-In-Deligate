//
//  SecondViewController.swift
//  datapass In Deligate
//
//  Created by THOTA NAGARAJU on 11/18/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstTF1: UITextField!
    @IBOutlet weak var secondTF2: UITextField!
    
    
    var delegate:datapass!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitBtn(_ sender: Any) {
        let nag = firstTF1.text!
        let thota = secondTF2.text!
        self.delegate.sendData(firstName: nag, lastName: thota)
        
        dismiss(animated: true)
        }
        
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
