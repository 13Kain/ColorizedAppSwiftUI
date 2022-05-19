//
//  ColorSliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Никита on 19.05.2022.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    @State var text = ""
    let color: Color
    
    var body: some View {
        HStack {
            TextView(value: value)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { newValue in
                    text = "\(lround(newValue))"
                }
            
            TextFieldView(text: $text, value: $value)
        }
        .onAppear {
            text = "\(lround(value))"
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorSliderView(value: .constant(100), color: .red)
        }
    }
}
