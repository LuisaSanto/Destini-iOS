//
//  Story.swift
//  Destini
//
//  Created by Luisa Santo on 2/22/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    let text: String
    let answer1: String
    let answer2: String
    let index: Int
    
    init(text: String, answer1: String, answer2: String, index: Int) {
        self.text = text
        self.answer1 = answer1
        self.answer2 = answer2
        self.index = index
    }
}
