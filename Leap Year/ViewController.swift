//
//  ViewController.swift
//  Leap Year
//
//  Created by Justin Purnell on 10/10/14.
//  Copyright © 2014 JP Enterprises, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func yearEnteredAction(yearTextField: UITextField) {
        var inputYear = yearTextField.text
        var testYear = inputYear.toInt()
        if testYear == nil {
            yearLabel.text = "Try a number?"} else {

            if (testYear! % 4 == 0 && !(testYear! % 100 == 0 && testYear! % 400 != 0)){
                yearLabel.text = "LEAP YEAR!"
            } else {
                yearLabel.text = "Normal year."
        }
        }
    }
}

