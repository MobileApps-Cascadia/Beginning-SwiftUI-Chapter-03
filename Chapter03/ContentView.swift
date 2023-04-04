//
//  ContentView.swift
//  Chapter03
//
//  Created by Mike Panitz on 3/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .padding(40)
                .background(Color.teal)
            Spacer()
            Spacer()
            Text("Swift is really cool")
                .background(Color.gray)
                .padding(30)
            HStack(alignment: .top){
                Text("Swift is so easy")
                    .padding(10)
                    .background(Color.blue)
                Spacer()
                Text("Swift is pretty hard")
                    .padding(30)
                    .background(Color.blue)
            }
            //The order matters because it is applying what is affected first.
            //What this means is that padding is apllied and a color to that padding or a color to the text then a spacing to the textviews surroundings.
            ZStack {
                Text ("A")
                    .font(.system(size: 40))
                    .foregroundColor(Color.red)
                    .offset(x: 2, y: 2)
                Text ("B")
                    .font(.system(size: 40))
                    .offset(x:14, y:28)
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
