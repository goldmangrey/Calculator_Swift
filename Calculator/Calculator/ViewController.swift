//
//  ViewController.swift
//  Calculator
//
//  Created by Yeskendir on 08.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber: Double = 0
    var numberFromScreen: Double = 0
    var operation: Int = 0
    var mathSign: Bool = false
    
    
    @IBOutlet weak var result: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        }
        else{
            result.text = result.text! + String(sender.tag)
        }
        numberFromScreen = Double(result.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text == "" && sender.tag != 10 && sender.tag != 15{
            firstNumber = Double(result.text!)!
            if sender.tag == 11 {
                result.text = "/"
            }
            else if sender.tag == 12{
                result.text = "x"
            }
            else if sender.tag == 13 {
                result.text = "-"
            }
            else if sender.tag == 14 {
                result.text = "+"
            }
            operation = sender.tag
            mathSign = true
        }
        else if sender.tag == 15 {
            if operation == 11 {
                result.text = String(firstNumber / numberFromScreen)
            }
            else if operation == 12{
                result.text = String(firstNumber * numberFromScreen)
            }
            else if operation == 13{
                result.text = String(firstNumber - numberFromScreen)
            }
            else if operation == 14{
                result.text = String(firstNumber + numberFromScreen)
            }
        }
        
        else if sender.tag == 10 {
            result.text = ""
            operation = 0
            firstNumber = 0
            numberFromScreen = 0
            mathSign = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

