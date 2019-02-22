//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    var path = PathLine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(path.root?.printTree() as Any)
        initialization()
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == topButton.tag {
            if ((path.root?.children[0].value.answer1) != "" || path.root?.children[0] != nil) {
                updateUI(position: 0)
            } else {
                removeButton()
            }
        } else {
            if ((path.root?.children[1].value.answer1) != "" || path.root?.children[0] != nil) {
                updateUI(position: 1)
            } else {
                removeButton()
            }
        }
    }
    
    func initialization() {
        storyTextView.text = path.root?.value.text
        topButton.setTitle(path.root?.value.answer1, for: UIControl.State.normal)
        bottomButton.setTitle(path.root?.value.answer2, for: UIControl.State.normal)
    }
    
    func updateUI(position: Int) {
        storyTextView.text = path.root?.children[position].value.text
        topButton.setTitle(path.root?.children[position].value.answer1, for: UIControl.State.normal)
        bottomButton.setTitle(path.root?.children[position].value.answer2, for: UIControl.State.normal)
        path.setRoot(root: (path.root?.children[position])!)
    }
    
    func removeButton() {
        topButton.setTitle("Unavailable", for: UIControl.State.normal)
        bottomButton.setTitle("Unavailable", for: UIControl.State.normal)
    }
    
    
}

