//
//  ContentView.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(
        questionText: "What popular operating system, launched in 1991, also has its own mascot, Tux the penguin?",
        possibleAnswers: ["Linux", "Vista", "Pingoo", "Tuxedoo"],
        correctAnswerIndex: 0
    )
    
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack (spacing: 15){
                Spacer()
                Text("1/10")
             //   Spacer()
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
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[index])
                        })
                    }
                }
                .padding()
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
