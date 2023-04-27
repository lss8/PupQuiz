//
//  GameWinPopUpView.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

import SwiftUI

struct GameWinPopUpView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack {
            Image.icon.popUp
            VStack(spacing: 32.0) {
                Text("Good Boy!")
                    .font(.custom(.goodDogPlain, size: 100))
                    .foregroundColor(Color.color.crystalBlue)
                    .kerning(2.0)
                VStack(spacing: 16.0) {
                    Text("Wow you're really good!")
                        .font(.custom(.goodDogPlain, size: 50))
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    Text("Dogs are really human's best friends! So how about we learn a little more about them?")
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


