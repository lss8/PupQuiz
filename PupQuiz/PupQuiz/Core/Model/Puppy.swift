//
//  Puppy.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

/*
 So in the Model's folder we put our models, wich are representantions of our application Data, like a translation of the
 "thing" we want to represent to actual code language.
 
 In this case I defined the Puppy structure, wich will represent the puppies information I want to use in the app.
 But this is just the definition, next let's go to our Database.
 
 */

import Foundation
import SwiftUI

struct Puppy: Identifiable, Hashable {
    
    let id: Int
    let image: Image
    let breed: String
    let coat: String
    let weight: String
    let height: String
    let origin: String
    let personality: String
    
    init(id: Int, image: Image, breed: String, coat: String, weight: String, height: String, origin: String, personality: String) {
        self.id = id
        self.image = image
        self.breed = breed
        self.coat = coat
        self.weight = weight
        self.height = height
        self.origin = origin
        self.personality = personality
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}

