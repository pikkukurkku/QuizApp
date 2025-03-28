//
//  WelcomeScreen.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI

struct WelcomeView: View {
    
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    Spacer()
                    
                    Text("Check your knowledge on computer and tech related knowledge")
                        .multilineTextAlignment(.center)
                        .lineSpacing(10)
                        .font(.title2)
                        .padding()
                    Spacer()
                    NavigationLink(destination: GameView()) {
                        BottomTextView(str: "OK, LET'S DO IT!")
                            .padding()
                        Spacer()
                        Spacer()
                    }
                    .buttonStyle(.plain)
                    Spacer()
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
