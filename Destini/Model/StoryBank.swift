//
//  StoryBank.swift
//  Destini
//
//  Created by Luisa Santo on 2/22/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class StoryBank {
    
    private let stories = [
        "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".",
        "He nods slowly, unphased by the question.",
        "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
        "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
        "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
        "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    ]
    private let answer1 = [
        "I\'ll hop in. Thanks for the help!",
        "At least he\'s honest. I\'ll climb in.",
        "I love Elton John! Hand him the cassette tape.",
        "",
        "",
        ""
    ]
    private let answer2 = [
        "Better ask him if he\'s a murderer first.",
        "Wait, I know how to change a tire.",
        "It\'s him or me! You take the knife and stab him.",
        "",
        "",
        ""
    ]
    private(set) var allStory = [Story]()
    
    init() {
        addStories()
    }
    
    func addStories() {
        assert(stories.count == answer1.count && answer1.count == answer2.count, "Story.array, answer1.array and answer2.array do not match in length")
        for i in 0 ..< stories.count {
            let newStory = Story(text: self.stories[i], answer1: self.answer1[i], answer2: self.answer2[i])
            allStory.append(newStory)
        }
    }
    
}
