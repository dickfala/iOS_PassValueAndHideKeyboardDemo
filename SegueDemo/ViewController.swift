//
//  ViewController.swift
//  SegueDemo
//
//  Created by cyy on 2018/2/24.
//  Copyright © 2018年 james chang. All rights reserved.
//

import UIKit


class ViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var testField: UITextField!
    @IBAction func btnAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "gotoSegueView", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gotoSegueView" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.message = testField.text
        }
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}

