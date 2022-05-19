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
    
    @FocusState var isInputActiva: Bool
    
    var body: some View {
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
