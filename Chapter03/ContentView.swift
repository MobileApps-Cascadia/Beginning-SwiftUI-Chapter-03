//
//  ContentView.swift
//  Chapter03
//
//  Created by Mike Panitz on 3/31/23.
//

//In Xcode's Inspector panel, the order of the modifiers is shown in the order in which they appear in the code. The Inspector panel displays the modifiers in the same order in which they are applied to the view, so you can see the order of the modifiers and modify them accordingly.


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:5){
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            VStack{
                Text("Where's Waldo?!")
                    .font(.title)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                Spacer()
                    .frame(height: 50)
                
                Text("This is a longer text that will wrap onto multiple lines.")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .truncationMode(.tail)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.2))
                Spacer()
                Spacer()
                Text("This text has a custom font")
                    .font(.custom("Courier New", size: 24))
                Spacer()
                Text("This text has a strikethrough")
                    .strikethrough(true, color: .red)
                
                VStack{
                    HStack(alignment: .firstTextBaseline) {
                        Text("A")
                        Spacer()
                        Text("B")
                        Text("C")
                        Text("D")
                    }
                    HStack(alignment: .top) {
                        Text("E")
                        Spacer()
                        Spacer()
                        Spacer()
                        Text("F")
                        Spacer()
                        Text("G")
                        Text("H")
                    }
                    HStack(alignment: .bottom) {
                        Text("I")
                        Text("J")
                        Text("K")
                        Spacer()
                        Text("L")
                    }
                }
            }
            ZStack {
                Text("Text View 1")
                Text("Text View 2")
                Text("Text View 3")
                Text("Text View 4")
                Text("Text View 5")
            }
            .offset(x: 0, y: -50)
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
