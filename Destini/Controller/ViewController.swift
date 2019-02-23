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
            if ((path.root?.children[0].value.answer1) != "" || path.root?.children[0].children.isEmpty == false) {
                updateUI(position: 0)
            } else {
                print("im here 1")
                removeButton()
            }
        } else {
            if ((path.root?.children[1].value.answer1) != "" || path.root?.children[1].children.isEmpty == false) {
                updateUI(position: 1)
            } else {
                print("im here 2")
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
        let newRoot = path.root?.children[position]
        if newRoot != nil {
            path.setRoot(root: (path.root?.children[position])!)
            //print((path.root?.children[position].value.index))
        } else {
            path.setRoot(root: ((path.root?.parent)!))
        }
    }
    
    func removeButton() {
        topButton.isHidden = true
        bottomButton.isHidden = true
    }
    
}

