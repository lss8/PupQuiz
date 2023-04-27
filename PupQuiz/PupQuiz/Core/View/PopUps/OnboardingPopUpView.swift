//
//  OnboardingPopUpView.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

import SwiftUI

struct OnboardingPopUpView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack {
            Image.icon.popUp
            VStack(spacing: 32.0) {
                Text("Pup Quiz!")
                    .font(.custom(.goodDogCool, size: 100))
                    .foregroundColor(Color.color.crystalBlue)
                    .kerning(2.0)
                VStack(spacing: 16.0) {
                    Text("How about we test your puppy knowledge?")
                        .font(.custom(.goodDogPlain, size: 50))
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    Text("Can you guess the right breeds of dogs only by their cute little puppy pictures?")
                        .font(.custom(.goodDogPlain, size: 50))
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                }
            }
            .onTapGesture {
                isPresented = false
            }
            .padding(.horizontal, 24.0)
        }
    }
}

