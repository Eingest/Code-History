//
//  QuestionView.swift
//  Code History
//
//  Created by Andreas Kiesel on 17.03.22.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
                .padding()
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    Button(
                        action: {
                            print("Tapped on option with the text: '\(question.possibleAnswers[answerIndex])' at index \(answerIndex)")
                            viewModel.makeGuess(atIndex: answerIndex)
                        },
                        label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                                .background(viewModel.color(forOptionIndex: answerIndex))
                        })
                    .disabled(viewModel.guessWasMade)
                }
            }
        }
        if viewModel.guessWasMade {
            Button(
                action: {
                    viewModel.displayNextScreen() },
                label: {
                    BottomTextView(str: "Next")
                })
        }
    }
}


struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
