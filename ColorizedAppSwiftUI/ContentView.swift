//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Nikita Yashin on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                RGBView()
                HStack {
                    Text("0")
                    Slider(value: .constant(0.5))
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
