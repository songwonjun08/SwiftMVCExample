//
//  ViewController.swift
//  MVCSwift
//
//  Created by WONJUN SONG on 12/12/2018.
//  Copyright © 2018 songwonjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtField1: UITextField!
    @IBOutlet var txtField2: UITextField!
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    let calculator = calcModel() // Create Model
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(resultUpdate),
                                               name: NSNotification.Name(rawValue: "resultUpdate"),
                                               object: nil)
    }
    
    @objc func resultUpdate() {
        resultLabel.text = String(calculator.result)
    }

    @IBAction func plusButtonClicked(_ sender: Any) {
        if let val1 = Double((txtField1?.text)!) {
            if let val2 = Double((txtField2?.text)!) {
                calculator.value1 = val1
                calculator.value2 = val2
                calculator.sum()
            }
        }
    }
    
}

