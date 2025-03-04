//
//  SettingsView.swift
//  PropertyWrappers2
//
//  Created by Diwanga Amasith on 2025-03-03.
//

import SwiftUI

struct SettingsView: View {
    @Binding var size: Double
    @Binding var color: Color
    
    var body: some View {
        VStack {
            Text("Font size: \(Int(size))")
            Slider(value: $size, in: 14...20)
            
            ColorPicker("Thena Color" , selection: $color)
        }.padding()
    }
}

#Preview {
    SettingsView(size: .constant(12), color: .constant(.blue))
}
