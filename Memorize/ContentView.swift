//
//  ContentView.swift
//  Memorize
//
//  Created by Edho Guntur Adhitama on 14/12/23.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻", "💩", "🐓", "🐑", "🐑"]
    
    var body: some View {
        HStack {
            ForEach(emojis, id: \.self) { index in
                CardView(content: index)
            }
        }
        .foregroundColor(.green)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
