//
//  ContentView.swift
//  Code History
//
//  Created by Andreas Kiesel on 16.03.22.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .background(
            NavigationLink(
                destination: ScoreView(viewModel: ScoreViewModel(correctGuess: viewModel.correctGuess, incorrectGuess: viewModel.incorrectGuess)),
                isActive: .constant(viewModel.gameIsOver),
                label: {EmptyView()}))
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
