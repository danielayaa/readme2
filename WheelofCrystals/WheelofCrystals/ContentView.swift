//
//  ContentView.swift
//  WheelofCrystals
//
//  Created by AMStudent on 9/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected: Int = 0
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        
        TabView(selection: $selected) {
            // images
            ForEach(1...4, id: \.self) { index in
                
                Image("p\(index)")
                    .resizable()
                    .frame(width: 400.0, height: 400.0)
                    .aspectRatio(contentMode:
                                    .fill)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
