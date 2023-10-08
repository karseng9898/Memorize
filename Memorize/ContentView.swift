//
//  ContentView.swift
//  Memorize
//
//  Created by Koo Kar Seng on 22/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: index % 2 == 0, content: "🐨")
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    var isFaceUp: Bool = false
    let content: String
    
    var body: some View {
        let roundedRectangle = RoundedRectangle(cornerRadius: 12)
        
        ZStack {
            if isFaceUp {
                roundedRectangle.fill(.white)
                roundedRectangle.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                roundedRectangle
            }
        }
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
