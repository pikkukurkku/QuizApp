//
//  BottomTextView.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI

struct BottomTextView: View {
    
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }
        .background(GameColor.accent)
    }
    }


#Preview {
    BottomTextView(str: "Hello")
}
