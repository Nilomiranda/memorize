//
//  ContentView.swift
//  Memorize
//
//  Created by Danilo Miranda on 13/07/20.
//  Copyright © 2020 Danilo Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 50) {
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke().foregroundColor(Color.orange)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// some other illustrative examples

struct CustomText: View {
    var body: some View {
        ZStack {
            Text("hi")
            Text("hi")
        }
    }
}

struct ZStackExample: View {
    var body: some View {
        ZStack {
            Text("Orange text")
            Text("Green text")
            Text("Blue text")
        }
    }
}
