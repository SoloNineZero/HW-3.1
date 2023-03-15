//
//  MainViewController.swift
//  HW 3.1
//
//  Created by Игорь Солодянкин on 16.03.2023.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetValueLabel: UILabel!
    @IBOutlet var curveValueLabel: UILabel!
    @IBOutlet var forceValueLabel: UILabel!
    @IBOutlet var durationValueLabel: UILabel!
    @IBOutlet var delayValueLabel: UILabel!
    
    // MARK: IBActions
    @IBAction func startButtonAction(_ sender: UIButton) {
    }
    

}
