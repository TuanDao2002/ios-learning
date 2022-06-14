//
//  ContentView.swift
//  ColorPickerApp
//
//  Created by Tuan Dao on 14/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var red = 1.0
    
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.largeTitle)
                .fontWeight(.light)
                .padding()
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color(red: red, green: 0.0, blue: 0.0, opacity: 1.0))
            HStack {
                ColorSwatch(color: .red)
                Slider(value: $red, in: 0...1, step: 0.1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
