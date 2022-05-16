//
//  RGBView.swift
//  ColorizedAppSwiftUI
//
//  Created by Nikita Yashin on 16.05.2022.
//

import SwiftUI

struct RGBView: View {
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 150)
            .foregroundColor(.yellow)
            .cornerRadius(15)
    }
}

struct RGBView_Previews: PreviewProvider {
    static var previews: some View {
        RGBView()
    }
}
