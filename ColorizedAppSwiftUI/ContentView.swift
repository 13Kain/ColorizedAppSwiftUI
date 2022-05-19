//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Nikita Yashin on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea(.all)
                .onTapGesture {
                    isInputActive = false
                }
            VStack(spacing: 40){
                ColorView(red: red, green: green, blue: blue)
                
                VStack{
                    ColorSliderView(value: $red, color: .red)
                    ColorSliderView(value: $blue, color: .blue)
                    ColorSliderView(value: $green, color: .green)
                }
                .frame(height: 150)
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
