//
//  ChoiceTextView.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        Text(choiceText)
            .font(.body)
                       .bold()
                       .multilineTextAlignment(.center)
                       .padding()
                       .border(accentColor, width: 4)
                       .buttonStyle(.plain)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Hey, Nat!")
}
