//
//  AlbumView.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

import SwiftUI

struct AlbumView: View {
    
    @State var puppyViewModel = PuppyViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.color.oldLace
                    .ignoresSafeArea()
                 ScrollView {
                    HStack(spacing: 32) {
                        VStack(spacing: 32) {
                            ForEach(puppyViewModel.puppies) { pup in
                                if pup.id % 2 == 0 {
                                    NavigationLink (destination: PuppyView(pup: pup)) {
                                        VStack {
                                            pup.image
                                                .resizable()
                                                .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.35)
                                            Text(pup.breed)
                                                .font(.custom(.goodDogPlain, size: 50))
                                                .foregroundColor(.black)
                                                .kerning(2.0)
                                        }
                                    }
                                }
                            }
                        }
                        VStack(spacing: 32) {
                            ForEach(puppyViewModel.puppies) { pup in
                                if pup.id % 2 != 0 {
                                    NavigationLink(destination: PuppyView(pup: pup)) {
                                        VStack {
                                            pup.image
                                                .resizable()
                                                .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.35)
                                            Text(pup.breed)
                                                .font(.custom(.goodDogPlain, size: 50))
                                                .foregroundColor(.black)
                                                .kerning(2.0)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView()
    }
}
