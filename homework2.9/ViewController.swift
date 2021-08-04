//
//  ViewController.swift
//  homework2.9
//
//  Created by Maria Berger on 03.08.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springView: SpringView!
    @IBOutlet weak var springLabel: SpringLabel!
    @IBOutlet weak var springButton: SpringButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springLabel.text = "push the button"
        springButton.setTitle("wobble", for: .normal)
        
    }

    @IBAction func runAnimationButton(_ sender: SpringButton) {
        
        switch springButton.isEnabled {
        case springButton.currentTitle == "wobble":
            springView.animation = "wobble"
            springView.curve = "easeInOut"
            springView.force = 1.0
            springView.duration = 2.0
            springView.animate()
            
            
            sender.animation = "wobble"
            sender.force = 1.0
            sender.duration = 2.0
            sender.animate()
            
            springLabel.text = "wobble，\ncurve: easeInOut, \nforce: 1, \nduration: 2"
            sender.setTitle("squeeze", for: .normal)
        case springButton.currentTitle == "squeeze":
            springView.animation = "squeeze"
            springView.curve = "easeIn"
            springView.force = 1.0
            springView.duration = 2.0
            springView.animate()
            
            sender.animation = "squeeze"
            sender.force = 1.0
            sender.duration = 2.0
            sender.animate()
            
            springLabel.text = "squeeze, \ncurve: easeIn, \nforce: 1, \nduration: 2"
            sender.setTitle("pop", for: .normal)
        case springButton.currentTitle == "pop":
            springView.animation = "pop"
            springView.curve = "easeInOut"
            springView.force = 2.0
            springView.duration = 3.0
            springView.animate()
            
            sender.animation = "pop"
            sender.force = 2.0
            sender.duration = 3.0
            sender.animate()
            
            springLabel.text = "pop, \ncurve: easeInOut, \nforce: 2, \nduration: 3"
            sender.setTitle("go again!", for: .normal)
        default:
            viewDidLoad()
            
        }
        
        
        
        
        }
        
        }
    

