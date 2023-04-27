//
//  HomeView.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

/*
 So, in here we begin constructing the screens of our app, wich is exactly what the "View" means in the MVVM:
 our user interface.
 The files in this folder presents the data and provide the controls to interact with it.
 
 This is the first one, just our home screen. I won't be going in details about the code because i'm focusing in the
 project pattern, but if you have any doubts fell free to ask me later :)
 
 Now, let's go check the QuizView ok?
 
 I also used a custom font, you can view how in the MyCustomFonts file in the Extensions folder.
 */

import SwiftUI

struct HomeView: View {
    @StateObject var QuizVM: QuizViewModel
    
    init() {
        _QuizVM = StateObject(wrappedValue: QuizViewModel())
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.color.oldLace
                    .ignoresSafeArea()
                VStack(spacing: 240) {
                    Image.icon.logo
                        .resizable()
                        .frame(width: geometry.size.width * 0.45, height: geometry.size.height * 0.3)
                    VStack(spacing: 160) {
                        NavigationLink(destination: QuizView()) {
                            Text("Start")
                                .font(.custom(.goodDogCool, size: 150))
                                .foregroundColor(Color.color.crystalBlue)
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

