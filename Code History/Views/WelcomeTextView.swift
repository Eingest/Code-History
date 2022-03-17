//
//  WelcomeTextView.swift
//  Code History
//
//  Created by Andreas Kiesel on 17.03.22.
//

import SwiftUI

struct WelcomeTextView: View {
    let str: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(str)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
                .padding()
        }
    }
}

struct WelcomeTextView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeTextView(str: "Test")
    }
}
