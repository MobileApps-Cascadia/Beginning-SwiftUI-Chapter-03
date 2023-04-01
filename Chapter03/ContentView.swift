//
//  ContentView.swift
//  Chapter03
//
//  Created by Mike Panitz on 3/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            ZStack {
                Text ("A")
                    .font(.system(size: 40))
                    .foregroundColor(Color.red)
                    .offset(x: 2, y: 2)
                Text ("A")
                    .font(.system(size: 40))
            }
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
