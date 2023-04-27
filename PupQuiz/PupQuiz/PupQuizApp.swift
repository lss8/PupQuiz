//
//  PupQuizApp.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

/*
 Hi, My name is Lucas and this is my WWDC Project.
 I'm from Brazil, and a Apple Developer Academy student.
 My email is lss8@academy.cin.ufpe.br and my git is lss8
 Feel free to get in touch :D
 
 This project was designed for ipads, so it will be best viewed if run on Ipad devices here in xcode
 
 I made this project because I wanted to put my passion of Dogs and Education together, so i decided to learn about
 Project Pattern by building a little fun Pop Quiz about Dogs, and projecting it entirely in MVVM (Model, View, ViewModel)
 And I intend to comment this entire project, to also serve as a quick guide in how to project your app in MVVM.
 
 This way I can teach people some fun facts about Dog Breeds, and also help anyone who wants to learn Project Patterns
 like me :)
 
 So let's begin this little journey, the project is divided like this:
 
 Core - Our project core files go in here, as goes the MVVM
    Model
    View
    ViewModel
    Components
 Database
 Extensions - Here we have extensions of SwiftUI classes, with methods and parameters that will be useful in the future.
 Resources - Here we have resources that we'll use in the app
 Assets - Here we have our assets, meaning images, gifs, sounds or anything else we'd like
 
 So let's start by looking at our Model's file shall we?
 */

import SwiftUI

@main
struct PupQuizApp: App {
    
    init() {
        CustomFonts.register()
    }

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .navigationViewStyle(.stack)
        }
    }
}
