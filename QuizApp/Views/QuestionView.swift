//
//  QuestionView.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    
    let question: Question
    var body: some View {
        Text(question.questionText)
            .frame(maxHeight: .infinity)
            .font(.title)
            .bold()
            .padding()
            .multilineTextAlignment(.leading)
            .lineLimit(nil)
            .fixedSize(horizontal: false, vertical: true)
        Spacer()
        HStack(spacing: 20) {
            ForEach(question.possibleAnswers.indices, id: \.self) { index in
                Button (action: {
                    print("Tapped on option with the text: \(question.possibleAnswers[index])")
                    viewModel.makeGuess(atIndex: index)
                }) {
                    ChoiceTextView(choiceText: question.possibleAnswers[index])
                        .background(viewModel.color(forOptionIndex: index))
                }
                .disabled(viewModel.guessWasMade)
                    .buttonStyle(.plain)
            }
        }
        if viewModel.guessWasMade {
            Button(action: { viewModel.displayNextScreen() }) {
                BottomTextView(str: "Next")
            }
            .buttonStyle(.plain)
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
      QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}
