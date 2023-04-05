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
            //How is the order of the modifiers represented in XCode's Inspector panel?
                //The modifiers are applied in order, so if the padding is applied before the color then the padding will be colored
                //In the two Text views that are colored, one is applied before the padding (globe). The other is colored after the padding (pidgeon)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .background(Color.teal).padding()
            Spacer()
            Text("Hello, world!")
            Spacer()
            Spacer()
            Text("Pidgeon").padding(28)
                .background(Color.teal)
            Spacer()
            ZStack {
                Text ("A")
                    .font(.system(size: 40))
                    .foregroundColor(Color.red)
                    .offset(x: 2, y: 2)
                Text ("A")
                    .font(.system(size: 40))
                Image(systemName: "house").offset(x:15,y:12).imageScale(.large).foregroundColor(Color.indigo)
            }
            HStack(alignment: .bottom){
                Text ("Get").font(.title)
                Text ("A")
                Text ("Cat")
            }
            HStack(alignment: .top){
                Text ("Get").font(.title)
                Spacer()
                Text ("A")
                Spacer()
                Text ("Cat")
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
