//
//  Image.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

import Foundation
import SwiftUI

extension Image {
    static let icon = Icons()
    static let puppy = Puppies()
}

struct Icons {
    
    let logo = Image("logo")
    let popUp = Image("popUp")
    
    let quizButton = Image("quizBreedButton")
    let wrongQuizButton = Image("wrongQuizBreedButton")
    
    let heart = Image("heart")
    let heartBlank = Image("heartBlank")
    
}

struct Puppies {
    let australianShepperd = Image("australianShepperd")
    let boxer = Image("boxer")
    let dachshund = Image("dachshund")
    let frenchBulldog = Image("frenchBulldog")
    let goldenRetriever = Image("goldenRetriever")
    let husky = Image("husky")
    let rottweiler = Image("rottweiler")
    let samoyed = Image("samoyed")
    let shitzu = Image("shitzu")
    let yorkshire = Image("yorkshire")
}
