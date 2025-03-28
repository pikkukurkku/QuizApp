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
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack (spacing: 15){
                Spacer()
                Text(viewModel.questionProgressText)
                QuestionView(question: viewModel.currentQuestion)
                .padding()
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    GameView()
}
