//
//  ColorSlider.swift
//  ColorPickerApp
//
//  Created by Tuan Dao on 16/06/2022.
//

import SwiftUI

struct ColorSlider: View {
    
    var color: Color
    @Binding var value: Double
    
    var body: some View {
        HStack {
            ColorSwatch(color: color)
            Slider(value: $value, in: 0...1, step: 0.1)
        }
        .padding()
    }
}

struct ColorSlider_Previews: PreviewProvider {
    @State static var value = 1.0
    static var previews: some View {
        ColorSlider(color: .blue, value: $value)
    }
}
