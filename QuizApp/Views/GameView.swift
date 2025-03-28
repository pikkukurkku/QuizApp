//
//  ContentView.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack (spacing: 10){
                    Spacer()
                    Text(viewModel.questionProgressText)
                    QuestionView(question: viewModel.currentQuestion)
                        .padding()
                    Spacer()
                }
                
                .foregroundColor(.white)
                .navigationBarHidden(true)
                .environmentObject(viewModel)
            }
            .navigationDestination(isPresented: Binding(
                get: { viewModel.gameIsOver },
                set: { _ in } // GameViewModel should handle game over state
            )) {
                ScoreView(viewModel: ScoreViewModel(
                    correctGuesses: viewModel.correctGuesses,
                    incorrectGuesses: viewModel.incorrectGuesses
                ))
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

#Preview {
    GameView()
}
