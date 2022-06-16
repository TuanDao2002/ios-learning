//
//  ContentView.swift
//  ColorPickerApp
//
//  Created by Tuan Dao on 14/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var red = 1.0
    @State var blue = 1.0
    @State var green = 1.0
    
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.largeTitle)
                .fontWeight(.light)
                .padding()
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color(red: red, green: green, blue: blue, opacity: 1.0))
            ColorSlider(color: .red, value: $red)
            ColorSlider(color: .green, value: $green)
            ColorSlider(color: .blue, value: $blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
