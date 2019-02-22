//
//  PathLine.swift
//  Destini
//
//  Created by Luisa Santo on 2/22/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class PathLine {
    private let stories = StoryBank().allStory
    var root: Path?
    
    init() {
        root = Path(stories[0])
        let oneA = Path(stories[2])
        let oneB = Path(stories[1])
        let threeA = Path(stories[5])
        let threeB = Path(stories[4])
        let twoA = Path(stories[2])
        let twoB = Path(stories[3])
        
        root?.add(oneA)
        root?.add(oneB)
        oneA.add(threeA)
        oneA.add(threeB)
        
        oneB.add(twoA)
        oneB.add(twoB)
        
        twoA.add(threeA)
        twoA.add(threeB)
    }
    
    func setRoot(root: Path){
        self.root = root
    }
        
}
