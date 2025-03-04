//
//  viewModal.swift
//  PropertyWrappers2
//
//  Created by Diwanga Amasith on 2025-03-04.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var result: Double = 0
     var title: String = "Simple Cal"
    
     func addition(numberOne: String, numberTwo: String){
        guard  let x = Double(numberOne), let y = Double(numberTwo) else {
            return
        }
         title = "Addition"
        result = x+y;
    }
    
    func substraction(numberOne: String, numberTwo: String){
       guard  let x = Double(numberOne), let y = Double(numberTwo) else {
           return
       }
        title = "Substraction"
       result = x-y;
   }
}


