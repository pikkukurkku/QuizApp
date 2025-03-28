//
//  ChoiceTextView.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
                       .bold()
                       .multilineTextAlignment(.center)
                       .padding()
                       .border(GameColor.accent, width: 4)
                       .buttonStyle(.plain)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Hey, Nat!")
}
