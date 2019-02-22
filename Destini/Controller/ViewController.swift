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
    
    let stories = StoryBank().allStory
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        
    }
    
    func initialization() {
        storyTextView.text = stories[0].text
        topButton.setTitle(stories[0].answer1, for: UIControl.State.normal)
        bottomButton.setTitle(stories[0].answer2, for: UIControl.State.normal)
    }
    
    
    
}

