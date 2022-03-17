//
//  WelcomeView.swift
//  Code History
//
//  Created by Andreas Kiesel on 17.03.22.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    WelcomeTextView(str: "Select the correct answers to the following questions.")
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Okay, let's go")
                        })
                }
                
            }
            .foregroundColor(.white)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
