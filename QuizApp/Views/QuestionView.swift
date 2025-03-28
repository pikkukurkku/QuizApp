//
//  QuestionView.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI

struct QuestionView: View {
    
    let question: Question
    var body: some View {
        Text(question.questionText)
            .font(.largeTitle)
            .bold()
            .padding()
            .multilineTextAlignment(.leading)
        Spacer()
        VStack(spacing: 20) {
            ForEach(question.possibleAnswers.indices, id: \.self) { index in
                Button (action: {
                    print("Tapped on option with the text: \(question.possibleAnswers[index])")
                   
                }) {
                    ChoiceTextView(choiceText: question.possibleAnswers[index])
                }
                    .buttonStyle(.plain)
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
      QuestionView(question: Game().currentQuestion)
    }
}
