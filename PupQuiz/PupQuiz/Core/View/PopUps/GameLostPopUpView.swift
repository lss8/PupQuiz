//
//  GameLostPopUpView.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

import SwiftUI

struct GameLostPopUpView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack {
            Image.icon.popUp
            VStack(spacing: 32.0) {
                Text("Don't Give Up!")
                    .font(.custom(.goodDogPlain, size: 100))
                    .foregroundColor(Color.color.crystalBlue)
                    .kerning(2.0)
                VStack(spacing: 16.0) {
                    Text("You were almost there!")
                        .font(.custom(.goodDogPlain, size: 50))
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    Text("How about giving it one more shot? I`m sure you'll get it this time!")
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

