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
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
              
            Text("Hello, world!")
                .multilineTextAlignment(.leading)
                .padding(20)
                .background(Color.green)
            Spacer()
            Text("Hello New World!")
                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .background(Color.blue)
                .padding(20)
            
            Spacer()
            
            HStack(alignment: .bottom){
                Text("Freddy")
                    .font (.system(size:20))
                    .background(Color.green)
                   
                Text("Compassion")
                    .background(Color.green)
                
                    
                Text("Grace")
                    .font(.largeTitle)
                    .background(Color.green)
               
            }
           
              
               
           
Spacer()
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

// question 4
/* When I add the padding first before the background the padding affect the background color but when it is the opposite the padding acts as spacer and does not affect the backgrond color
 I think the order of the modifiers matters and can affect the design of the element.
 
 The spacer inside the Vstack take all the space and divide each element into a even space.
 */
