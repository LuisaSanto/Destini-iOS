//
//  Path.swift
//  Destini
//
//  Created by Luisa Santo on 2/22/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Path {
    var value: Story
    var children: [Path] = []
    weak var parent: Path?
    
    init(_ value: Story) {
        self.value = value
    }
    
    func add(_ child: Path){
        children.append(child)
        child.parent = self
    }

}
