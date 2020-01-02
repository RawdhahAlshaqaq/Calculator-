//
//  ViewController.swift
//  CAL_
//
//  Created by Rawdhah alshaqaq on 5/23/19.
//  Copyright © 2019 Rawdhah alshaqaq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NumbShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var newOperation = true

    func addNumberToInput(number:String){
        
        
        var textnumber = String(NumbShow.text!)
        
        if newOperation {
          textnumber = ""
            newOperation = false
        }
            textnumber = textnumber + number
     

            NumbShow.text = textnumber
    
    }
    
    
    @IBAction func bu0(_ sender: Any) {
        
        addNumberToInput( number: "0")
    }
    
    @IBAction func buDot(_ sender: Any) {
        addNumberToInput( number: ".")
    }
    
   
    @IBAction func bu1(_ sender: Any) {
        addNumberToInput( number: "1")
    }
    
    @IBAction func bu2(_ sender: Any) {
        addNumberToInput( number: "2")
    }
    
    @IBAction func bu3(_ sender: Any) {
        addNumberToInput( number: "3")
    }
    
    @IBAction func bu4(_ sender: Any) {
        addNumberToInput( number: "4")
    }
    
    @IBAction func bu5(_ sender: Any) {
        addNumberToInput( number: "5")
    }
    
    @IBAction func bu6(_ sender: Any) {
        addNumberToInput( number: "6")
    }

    @IBAction func bu7(_ sender: Any) {
        addNumberToInput( number: "7")
    }
    
    @IBAction func bu8(_ sender: Any) {
        addNumberToInput( number: "8")
    }
    
    @IBAction func bu9(_ sender: Any) {
        addNumberToInput( number: "9")
    }
   
    var op = "+"
    var number1: Double?
    @IBAction func buMal(_ sender: Any) {
        op = "*"
         number1 = Double( NumbShow.text! )
            newOperation = true
        
    }
    
    @IBAction func buDiv(_ sender: Any) {
        
        op = "/"
        number1 = Double( NumbShow.text! )
        newOperation = true
        
    }
    
    
    @IBAction func buAd(_ sender: Any) {
        op = "+"
        number1 = Double( NumbShow.text! )
        newOperation = true
    }
    
    
    @IBAction func buSub(_ sender: Any) {
        op = "-"
        number1 = Double( NumbShow.text! )
        newOperation = true
    }
    
    
    @IBAction func buEqual(_ sender: Any) {
        
        let number2 = Double (NumbShow.text!)
        var results: Double?
        
        switch op {
        case "*":
            results = number1! * number2!
        case "/":
            results = number1! / number2!
        case "+":
            results = number1! + number2!
        case "-":
            results = number1! - number2!
        default:
            results = 0.0
        }
        
        NumbShow.text! = String (results!)
        newOperation = true
    }
    
    
    @IBAction func buAc(_ sender: Any) {
         NumbShow.text =  " 0 "
         newOperation = true
        
    }
    
    
    @IBAction func buMinus(_ sender: Any) {
        var textnumber = String(NumbShow.text!)
        
        textnumber =  "-" + textnumber
        
        NumbShow.text = textnumber
        
        
        
    }
    
    
    @IBAction func Buper(_ sender: Any) {
   
        var number1 = Double(NumbShow.text!)
        number1 = number1! / 100
        NumbShow.text = String ( number1!)
        
    }
    
    
}

