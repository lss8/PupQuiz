//
//  QuizViewModel.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

/*
 Now here's where things get interesting, the ViewModel, like i said before, acts like a bridge between the View and Model.
 It exposes the data from the model to the view, and provides the view with methods to access such data.
 
 In here I defined the core of the quiz game, such as calls to the data, functions to make it work, variables, etc...
 
 And since we want this class to be viewd by the view, we have to make it an ObservableObject, and my variables have to be
 @Published, so that the view reoloads when they change.
 
 So that sums it up!
 This is how I made a game with the MVVM pattern.
 It can actually have more layers if you want to dig it enough, but this can be a quickstart to anyone willing to learn ;D
 
 You can check the other Views and ViewModels to see how they interact, and if you have any questions fell free to contact me!
 */

import Foundation
import SwiftUI

class QuizViewModel: ObservableObject {
    
    @Published var puppyCounter = 0
    @Published var heartCounter = 5
    @Published var answer = 1
    
    @Published var randomPuppy = ""
    @Published var wrongPuppy1 = ""
    @Published var wrongPuppy2 = ""
    @Published var wrongPuppy3 = ""
    @Published var wrongPuppy4 = ""
    
    @Published var randomPuppyImage = Image(systemName: "")
    
    @Published var onboarding = true
    @Published var lostGame = false
    @Published var wonGame = false
    @Published var lostGamePopUp = false
    @Published var wonGamePopUp = false
    @Published var selectedButton1 = false
    @Published var selectedButton2 = false
    @Published var selectedButton3 = false
    @Published var selectedButton4 = false
    @Published var heart5 = true
    @Published var heart4 = true
    @Published var heart3 = true
    @Published var heart2 = true
    @Published var heart1 = true
    
    var puppies: [(breed: String, image: Image, appeared: Bool)] = [
        (AlbumData().australianShepperd.breed, AlbumData().australianShepperd.image, false),
        (AlbumData().boxer.breed, AlbumData().boxer.image, false),
        (AlbumData().dachshund.breed, AlbumData().dachshund.image, false),
        (AlbumData().frenchBulldog.breed, AlbumData().frenchBulldog.image, false),
        (AlbumData().goldenRetriever.breed, AlbumData().goldenRetriever.image, false),
        (AlbumData().husky.breed, AlbumData().husky.image, false),
        (AlbumData().rottweiler.breed, AlbumData().rottweiler.image, false),
        (AlbumData().samoyed.breed, AlbumData().samoyed.image, false),
        (AlbumData().shitzu.breed, AlbumData().shitzu.image, false),
        (AlbumData().yorkshire.breed, AlbumData().yorkshire.image, false)
    ]
    
    var puppyRandAnswer: [(breed: String, appeared: Bool)] = [
        (AlbumData().australianShepperd.breed, false),
        (AlbumData().boxer.breed, false),
        (AlbumData().dachshund.breed, false),
        (AlbumData().frenchBulldog.breed, false),
        (AlbumData().goldenRetriever.breed, false),
        (AlbumData().husky.breed, false),
        (AlbumData().rottweiler.breed, false),
        (AlbumData().samoyed.breed, false),
        (AlbumData().shitzu.breed, false),
        (AlbumData().yorkshire.breed, false)
    ]
    
    var puppiesAnswer: [Puppy] = albumData
    
    func buttonPress1() {
        if answer == 1 {
            randPuppy()
        } else {
            selectedButton1 = true
            removeHeart()
        }
    }
    
    func buttonPress2() {
        if answer == 2 {
            randPuppy()
        } else {
            selectedButton2 = true
            removeHeart()
        }
    }
    
    func buttonPress3() {
        if answer == 3 {
            randPuppy()
        } else {
            selectedButton3 = true
            removeHeart()
        }
    }
    
    func buttonPress4() {
        if answer == 4 {
            randPuppy()
        } else {
            selectedButton4 = true
            removeHeart()
        }
    }
    
    func randPuppy() {
        let randomIndex = Int.random(in: 0..<10)
        clearButton()
        
        if puppyCounter >= 10 {
            wonGamePopUp = true
        }
        else if !puppies[randomIndex].appeared {
            
            randomPuppy = puppies[randomIndex].breed
            randomPuppyImage = puppies[randomIndex].image
            
            puppies[randomIndex].appeared.toggle()
            puppyRandAnswer[randomIndex].appeared.toggle()
            
            puppyCounter += 1
            answer = Int.random(in: 1..<5)
            randName1()
        }
        else if puppyCounter < 10 {
            randPuppy()
        }
    }
    
    func randName1() {
        let randomIndex = Int.random(in: 0..<10)
        
        if !puppyRandAnswer[randomIndex].appeared {
            wrongPuppy1 = puppyRandAnswer[randomIndex].breed
            puppyRandAnswer[randomIndex].appeared.toggle()
            randName2()
        }
        else {
            randName1()
        }
    }
    
    func randName2() {
        let randomIndex = Int.random(in: 0..<10)
            
        if !puppyRandAnswer[randomIndex].appeared {
            wrongPuppy2 = puppyRandAnswer[randomIndex].breed
            puppyRandAnswer[randomIndex].appeared.toggle()
            randName3()
        }
        else {
            randName2()
        }
    }
    
    func randName3() {
        let randomIndex = Int.random(in: 0..<10)
            
        if !puppyRandAnswer[randomIndex].appeared {
            wrongPuppy3 = puppyRandAnswer[randomIndex].breed
            puppyRandAnswer[randomIndex].appeared.toggle()
            randName4()
        }
        else {
            randName3()
        }
    }
    
    func randName4() {
        let randomIndex = Int.random(in: 0..<10)
            
        if !puppyRandAnswer[randomIndex].appeared {
            wrongPuppy4 = puppyRandAnswer[randomIndex].breed
            puppyRandAnswer[randomIndex].appeared.toggle()
            clearRandName()
        }
        else {
            randName4()
        }
    }
    
    func clearRandName() {
        for i in 0..<10 {
            puppyRandAnswer[i].appeared = false
        }
    }
    
    func clearButton() {
        selectedButton1 = false
        selectedButton2 = false
        selectedButton3 = false
        selectedButton4 = false
    }
    
    func removeHeart() {
        switch heartCounter {
        case 5:
            heart5.toggle()
            heartCounter = 4
        case 4:
            heart4.toggle()
            heartCounter = 3
        case 3:
            heart3.toggle()
            heartCounter = 2
        case 2:
            heart2.toggle()
            heartCounter = 1
        case 1:
            heart1.toggle()
            heartCounter = 0
            lostGamePopUp = true
        default:
            lostGamePopUp = true
        }
    }
    
}
