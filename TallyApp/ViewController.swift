//
//  ViewController.swift
//  TallyApp
//
//  Created by Skyler Robbins on 9/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tallyIntervalLabel: UILabel!
    @IBOutlet weak var tallyButton: UIButton!
    
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
        let tallyCount = tallyButton.titleLabel
        let newTallyCount = Int(tallyCount!.text!)! + Int(tallyIntervalLabel.text!)!
        tallyButton.setTitle(String(newTallyCount), for: .normal)
        tallyButton.setAttributedTitle(NSAttributedString(string: String(newTallyCount), attributes: [.font: UIFont.systemFont(ofSize: .init(100))]), for: .normal)
    }
    
    @IBAction func resetButtonPressed() {
        tallyButton.setAttributedTitle(NSAttributedString(string: String("0"), attributes: [.font: UIFont.systemFont(ofSize: .init(100))]), for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

