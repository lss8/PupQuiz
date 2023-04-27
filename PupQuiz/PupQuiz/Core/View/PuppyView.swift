//
//  PuppyView.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

import SwiftUI

struct PuppyView: View {
    var pup: Puppy
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.color.oldLace
                    .ignoresSafeArea()
                VStack() {
                    pup.image
                        .resizable()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.45)
                        .ignoresSafeArea()
                        .padding([.bottom], 0)
                        VStack(spacing: 64.0) {
                            HStack(spacing: 24.0) {
                                Text(pup.breed)
                                    .font(.system(size: 70))
                                    .foregroundColor(.black)
                                Image(pup.origin)
                                Spacer()
                            }
                            .padding(.horizontal, 64.0)
                            .frame(width: geometry.size.width)
                            HStack(spacing: 128.0) {
                                VStack {
                                    Text(pup.coat)
                                        .font(.system(size: 40))
                                        .foregroundColor(.black)
                                    Text("Coat")
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                }
                                VStack {
                                    Text(pup.height)
                                        .font(.system(size: 40))
                                        .foregroundColor(.black)
                                    Text("Height")
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                }
                                VStack {
                                    Text(pup.weight)
                                        .font(.system(size: 40))
                                        .foregroundColor(.black)
                                    Text("Weight")
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                }
                            }.padding(.horizontal, 64.0)
                            .frame(width: geometry.size.width)
                            Text(pup.personality)
                                .font(.system(size: 500))
                                .minimumScaleFactor(0.01)
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.horizontal, 64.0)
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.6)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

