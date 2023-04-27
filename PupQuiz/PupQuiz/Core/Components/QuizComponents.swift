//
//  QuizComponents.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

import SwiftUI

extension QuizView {
    
    var quizButtonView: some View {
        ZStack {
            Image.icon.quizButton
                .resizable()
            Text(QuizVM.wrongPuppy1)
                .font(.custom(.goodDogPlain, size: 50))
                .foregroundColor(.black)
                .kerning(2.0)
        }
    }
    
    var quizButtonView2: some View {
        ZStack {
            Image.icon.quizButton
                .resizable()
            Text(QuizVM.wrongPuppy2)
                .font(.custom(.goodDogPlain, size: 50))
                .foregroundColor(.black)
                .kerning(2.0)
        }
    }
    
    var quizButtonView3: some View {
        ZStack {
            Image.icon.quizButton
                .resizable()
            Text(QuizVM.wrongPuppy3)
                .font(.custom(.goodDogPlain, size: 50))
                .foregroundColor(.black)
                .kerning(2.0)
        }
    }
    
    var quizButtonView4: some View {
        ZStack {
            Image.icon.quizButton
                .resizable()
            Text(QuizVM.wrongPuppy4)
                .font(.custom(.goodDogPlain, size: 50))
                .foregroundColor(.black)
                .kerning(2.0)
        }
    }
    
    var quizButtonAnswerView: some View {
        ZStack {
            Image.icon.quizButton
                .resizable()
            Text(QuizVM.randomPuppy)
                .font(.custom(.goodDogPlain, size: 50))
                .foregroundColor(.black)
                .kerning(2.0)
        }
    }
    
    var wrongQuizButtonView: some View {
        ZStack {
            Image.icon.wrongQuizButton
                .resizable()
            Text(QuizVM.wrongPuppy1)
                .foregroundColor(.black)
                .font(.custom(.goodDogPlain, size: 50))
                .kerning(2.0)
        }
    }
    
    var wrongQuizButtonView2: some View {
        ZStack {
            Image.icon.wrongQuizButton
                .resizable()
            Text(QuizVM.wrongPuppy2)
                .foregroundColor(.black)
                .font(.custom(.goodDogPlain, size: 50))
                .kerning(2.0)
        }
    }
    
    var wrongQuizButtonView3: some View {
        ZStack {
            Image.icon.wrongQuizButton
                .resizable()
            Text(QuizVM.wrongPuppy3)
                .foregroundColor(.black)
                .font(.custom(.goodDogPlain, size: 50))
                .kerning(2.0)
        }
    }
    
    var wrongQuizButtonView4: some View {
        ZStack {
            Image.icon.wrongQuizButton
                .resizable()
            Text(QuizVM.wrongPuppy4)
                .foregroundColor(.black)
                .font(.custom(.goodDogPlain, size: 50))
                .kerning(2.0)
        }
    }
}

