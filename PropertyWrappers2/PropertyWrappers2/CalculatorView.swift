//
//  CalculatorView.swift
//  PropertyWrappers2
//
//  Created by Diwanga Amasith on 2025-03-03.
//

import SwiftUI

struct CalculatorView: View {
    @State var numberOne :String = "";
    @State var numberTwo = "";
    @StateObject var viewModal = ViewModel()
    
    var body: some View {
        VStack {
            Text("\(viewModal.title)")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Number 2", text: $numberOne).textFieldStyle(.roundedBorder)
            
            TextField("Number 2", text: $numberTwo).textFieldStyle(.roundedBorder)
            
            Text("Result \(viewModal.result)").font(.title).fontWeight(.bold)
            
            HStack {
                Button("+") {
                    viewModal.addition(numberOne: numberOne,numberTwo: numberTwo)
                }.tint(.blue)
                
                Button("-") {
                    viewModal.substraction(numberOne: numberOne, numberTwo: numberTwo)
                }.tint(.red)
                
                Button("x") {
                    
                }.tint(.green)
                
                Button("/") {
                    
                }.tint(.yellow)
            }.buttonStyle(.bordered)
            
            Spacer()
            
        }.padding()
    }
    
    func addition() -> Double {
        guard  let x = Double(numberOne), let y = Double(numberTwo) else {
            return 0
        }
        return x+y
    }
}

#Preview {
    CalculatorView()
}
