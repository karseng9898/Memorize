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
    @State var isFaceUp = false
    let content: String
    
    var body: some View {
        let base = RoundedRectangle(cornerRadius: 12)
        
        ZStack {
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
            print(self)
        }
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
