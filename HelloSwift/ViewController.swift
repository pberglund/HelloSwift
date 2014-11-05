//
//  ViewController.swift
//  HelloSwift
//
//  Created by Sage Path on 11/4/14.
//  Copyright (c) 2014 Sage Path. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUi()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sayHelloAction(sender: AnyObject) {
        let name = nameTextField.text
        
        if name.isEmpty {
            
            let alert = UIAlertController(title: "Error", message: "Please enter a name",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,
                handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            helloLabel.text = "Hello \(name)!"
        }
    }
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var sayHelloButton: UIButton!
    
    func setupUi(){
        helloLabel.text = "Hello Swift!"
        helloLabel.textColor = UIColor.redColor()
        helloLabel.textAlignment = NSTextAlignment.Center
        nameTextField.placeholder = "Enter your name"
        sayHelloButton.setTitle("Say Hello", forState: .Normal)

    }
}

