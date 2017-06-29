//
//  ViewController.swift
//  WWCTipCalculator
//
//  Created by Amy Giver on 6/22/17.
//  Copyright © 2017 Amy Giver Squid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bill: String = "0"
    var numberBill: Double = 0.00
    
    @IBOutlet weak var billDisplay: UILabel!
    
    @IBOutlet weak var tenTip: UILabel!
    @IBOutlet weak var fifteenTip: UILabel!
    @IBOutlet weak var twentyTip: UILabel!
    
    
    @IBOutlet weak var tenBill: UILabel!
    @IBOutlet weak var fifteenBill: UILabel!
    @IBOutlet weak var twentyBill: UILabel!
    
    
    @IBOutlet weak var decimalButton: UIButton!
    
    @IBAction func calculatorButtonWasPressed(_ sender: UIButton) {
        print("button pressed", sender.tag)
        if(sender.tag >= 0 && sender.tag <= 9){
            if(bill == "0"){
                bill = String(sender.tag)
            }
            else {
                bill += String(sender.tag)

            }
        }
        else if(sender.tag == 10){
            bill = "0"
            decimalButton.isEnabled = true
        }
        else if(sender.tag == 11){
            bill += "."
            sender.isEnabled = false

        }
        updateDisplay()

    }
    
    func updateDisplay(){
        billDisplay.text = bill
        numberBill = Double(bill)!
        let tenTipNumber = numberBill * 0.10
        let fifteenTipNumber = numberBill * 0.15
        let twentyTipNumber = numberBill * 0.20

        tenTip.text = String(format: "%.2f", tenTipNumber)
        fifteenTip.text = String(format: "%.2f", fifteenTipNumber)
        twentyTip.text = String(format: "%.2f", twentyTipNumber)
        
        tenBill.text = String(format: "%.2f", numberBill + tenTipNumber)
        fifteenBill.text = String(format: "%.2f", numberBill + fifteenTipNumber)
        twentyBill.text = String(format: "%.2f", numberBill + twentyTipNumber)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        billDisplay.text = bill
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension Float {
    func roundTo(places: Int) -> Float {
        let divisor = pow(10.0, Float(places))
        return (self * divisor).rounded() / divisor
    }
}

