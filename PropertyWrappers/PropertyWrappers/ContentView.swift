//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by Diwanga Amasith on 2025-03-02.
//

import SwiftUI

struct ContentView: View {
    
    var activities :[String] = ["Archery", "Baseball", "Cricket"]
    @State var selected = "Archery"
    var body: some View {
        VStack {
            Text("Why not Try..").font(.largeTitle).fontWeight(.bold)
            
            Circle()
                .fill(Color.blue)
                .overlay {
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                }
            
            Text("\(selected)").font(.title)
            
            Button("Try Again") {
                //print("Tapped Try Again btn")
                
               let randomValue = activities.randomElement()
                selected = randomValue ?? "diwanga"
            }.buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
