//
//  QuizView.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

/*
 So, in here is where it actually starts
 In this view we want to actually present the data from our database, but in the MVVM the view doesn't actually have
 acces to it directly, we have to communicate with the ViewModel and it will be the bridge between our View and Database.
 
 In this case we have the QuizViewModel to play this part (It's also a pattern to name the View and ViewModel the same
 so the code is easy to understand (QuizView -> QuizViewModel, PuppyView -> PuppyViewModel, NameView -> NameViewModel, etc...)
 
 We call our ViewModel as a StateObject, so that it reload our screens everytime one "Published" var changes
 values. I'll explain a bit more about this later.
 
 In here I defined the screen of the quiz game, such as buttons, images, layout, etc..
 
 Now everytime we need to acces data we can invoke the QuizVM var, and access everything our ViewModel offer us!
 So let's check our QuizViewModel to wrap things up?
 */

import SwiftUI

struct QuizView: View {
    @StateObject var QuizVM: QuizViewModel
    
    init() {
        _QuizVM = StateObject(wrappedValue: QuizViewModel())
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.color.oldLace
                    .ignoresSafeArea()
                
                NavigationLink(destination: AlbumView(), isActive: $QuizVM.wonGame) {EmptyView()}
                
                NavigationLink(destination: HomeView(), isActive: $QuizVM.lostGame) {EmptyView()}
                
                VStack(spacing: 24.0) {
                    HStack {
                        HStack(spacing: 8.0) {
                            QuizVM.heart1 ? Image.icon.heart : Image.icon.heartBlank
                            QuizVM.heart2 ? Image.icon.heart : Image.icon.heartBlank
                            QuizVM.heart3 ? Image.icon.heart : Image.icon.heartBlank
                            QuizVM.heart4 ? Image.icon.heart : Image.icon.heartBlank
                            QuizVM.heart5 ? Image.icon.heart : Image.icon.heartBlank
                        }
                        Spacer()
                        Text("\(QuizVM.puppyCounter)/10")
                            .font(.custom(.goodDogPlain, size: 50))
                    }
                    .frame(width: geometry.size.width * 0.8)
                    QuizVM.randomPuppyImage
                        .resizable()
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.4)
                    VStack(spacing: 24.0) {
                        HStack(spacing: 24.0) {
                            Button {
                                if !QuizVM.selectedButton1 {
                                    QuizVM.buttonPress1()
                                }
                            } label: {
                                if QuizVM.selectedButton1 {
                                    wrongQuizButtonView
                                }
                                else if QuizVM.answer == 1 {
                                    quizButtonAnswerView
                                }
                                else {
                                    quizButtonView
                                }
                            }
                            .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.22)
                            Button {
                                if !QuizVM.selectedButton2 {
                                    QuizVM.buttonPress2()
                                }
                            } label: {
                                if QuizVM.selectedButton2 {
                                    wrongQuizButtonView2
                                }
                                else if QuizVM.answer == 2 {
                                    quizButtonAnswerView
                                }
                                else {
                                    quizButtonView2
                                }
                            }
                            .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.22)
                        }
                        HStack(spacing: 24.0) {
                            Button {
                                if !QuizVM.selectedButton3 {
                                    QuizVM.buttonPress3()
                                }
                            } label: {
                                if QuizVM.selectedButton3 {
                                    wrongQuizButtonView3
                                }
                                else if QuizVM.answer == 3 {
                                    quizButtonAnswerView
                                }
                                else {
                                    quizButtonView3
                                }
                            }
                            .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.22)
                            Button {
                                if !QuizVM.selectedButton4 {
                                    QuizVM.buttonPress4()
                                }
                            } label: {
                                if QuizVM.selectedButton4 {
                                    wrongQuizButtonView4
                                }
                                else if QuizVM.answer == 4 {
                                    quizButtonAnswerView
                                }
                                else {
                                    quizButtonView4
                                }
                            }
                            .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.22)
                        }
                        Spacer()
                    }
                }
            }
            .onAppear {
                QuizVM.randPuppy()
            }
            .sheet(isPresented: $QuizVM.onboarding) {
                OnboardingPopUpView(isPresented: $QuizVM.onboarding)
                    .clearModalBackground()
            }
            .sheet(isPresented: $QuizVM.wonGamePopUp, onDismiss: {
                QuizVM.wonGame = true
            }, content: {
                GameWinPopUpView(isPresented: $QuizVM.wonGamePopUp)
                    .clearModalBackground()
            })
            .sheet(isPresented: $QuizVM.lostGamePopUp, onDismiss: {
                QuizVM.onboarding = false
                QuizVM.lostGame = true
            }, content: {
                GameLostPopUpView(isPresented: $QuizVM.lostGamePopUp)
                    .clearModalBackground()
            })
        }
        
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
