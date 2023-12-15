//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Edho Guntur Adhitama on 14/12/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
