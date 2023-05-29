//
//  ViewController.swift
//  TrafficLight
//
//  Created by Minh Tan Vu on 29/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red
        
    }

    @IBAction func redButtonPressed(_ sender: UIButton) {
        redView.backgroundColor = .red
        yellowView.backgroundColor = .darkGray
        greenView.backgroundColor = .darkGray
    }
    
    @IBAction func yellowButtonPressed(_ sender: UIButton) {
        redView.backgroundColor = .darkGray
        yellowView.backgroundColor = .yellow
        greenView.backgroundColor = .darkGray
    }

    @IBAction func greenButtonPressed(_ sender: UIButton) {
        redView.backgroundColor = .darkGray
        yellowView.backgroundColor = .darkGray
        greenView.backgroundColor = .green
    }
    
}

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        
        set (value) {
            layer.cornerRadius = value
            layer.masksToBounds = true
            self.clipsToBounds = true
        }
    }
}

