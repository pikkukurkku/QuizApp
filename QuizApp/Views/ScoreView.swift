//
//  ScoreView.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI

struct ScoreView: View {
    
    let viewModel: ScoreViewModel
    
    
    var body: some View {
        ZStack  {
            GameColor.main.ignoresSafeArea()
            VStack  {
                Spacer()
                Text("Final score:")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) ✅ ")
                    Text("\(viewModel.incorrectGuesses) ❌")
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Play again?")
                    })
                .buttonStyle(.plain)
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 7, incorrectGuesses: 3))
}

