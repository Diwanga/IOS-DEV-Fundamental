//
//  ContentView.swift
//  PropertyWrappers2
//
//  Created by Diwanga Amasith on 2025-03-02.
//

import SwiftUI

struct ContentView: View {
    @State var displaySheet : Bool = false;
    @State var size : Double = 14;
    @State var color : Color = .black;

    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Text("HELLO").font(.title)
                .fontWeight(.bold).foregroundStyle(color)
            
            Text("Lorem Epsum")
            
            Button("Tap me") {
                displaySheet.toggle();
            }.buttonStyle(.bordered)
                .tint(.blue)
            
            Spacer()
        }
        .padding()
        .sheet(isPresented: $displaySheet) {
            SettingsView(size: $size, color:$color);
        }
    }
}

#Preview {
    ContentView()
}
