//
//  ViewController.swift
//  TallyApp
//
//  Created by Skyler Robbins on 9/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tallyIntervalLabel: UILabel!
    @IBOutlet weak var tallyCountLabel: UILabel!
    
    @IBAction func minusIntervalButtonPressed() {
        let tallyInterval = tallyIntervalLabel.text
        let newTallyInterval = Int(tallyInterval!)! - 1
        tallyIntervalLabel.text = String(newTallyInterval)
    }
    
    @IBAction func plusIntervalButtonPressed() {
        let tallyInterval = tallyIntervalLabel.text
        let newTallyInterval = Int(tallyInterval!)! + 1
        tallyIntervalLabel.text = String(newTallyInterval)
    }
    
    @IBAction func tallyButtonPressed() {
        let tallyCount = tallyCountLabel.text
        let newTallyCount = Int(tallyCount!)! + Int(tallyIntervalLabel.text!)!
        tallyCountLabel.text = String(newTallyCount)
    }
    
    @IBAction func resetButtonPressed() {
        tallyCountLabel.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

