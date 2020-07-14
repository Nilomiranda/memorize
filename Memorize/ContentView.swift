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
        return ZStack(content: {
            RoundedRectangle(cornerRadius: 10.0)
            Text("👻")
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
