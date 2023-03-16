//
//  MainViewController.swift
//  HW 3.1
//
//  Created by Игорь Солодянкин on 16.03.2023.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var colorView: SpringView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var curveValueLabel: UILabel!
    @IBOutlet var forceValueLabel: UILabel!
    @IBOutlet var durationValueLabel: UILabel!
    @IBOutlet var delayValueLabel: UILabel!
    
    @IBOutlet var runButton: UIButton!
    
    // MARK: - Private properties
    private var animate = Animation.getRandomAnimation()
    
    // MARK: Override function
    override func viewDidLoad() {
        super.viewDidLoad()
        settingLabelsOnColorView()
        animate = Animation.getRandomAnimation()
        runButton.setTitle("Run '\(animate.name)'", for: .normal)
    }
    
    // MARK: - IBActions
    @IBAction func runButtonAction(_ sender: UIButton) {
        settingLabelsOnColorView()
        
        colorView.animation = animate.name
        colorView.curve = animate.curve
        colorView.force = CGFloat(animate.force)
        colorView.duration = CGFloat(animate.duration)
        colorView.delay = CGFloat(animate.delay)
        colorView.animate()
        
        animate = Animation.getRandomAnimation()
        sender.setTitle("Run '\(animate.name)'", for: .normal)
    }
    
    // MARK: - Private func
    private func settingLabelsOnColorView() {
        nameLabel.text = animate.name
        curveValueLabel.text = animate.curve
        forceValueLabel.text = String(format: "%.02f", animate.force)
        durationValueLabel.text = String(format: "%.02f", animate.duration)
        delayValueLabel.text = String(format: "%.02f", animate.delay)
    }
}
