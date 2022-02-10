//
//  RandomVM.swift
//  
//
//  Created by Vivek Gupta on 10/02/2022.
//

import Foundation

@available(iOS 15.0, macOS 11.0, *)
public class RandomVM : ObservableObject {

    @Published var number: Int = Int()
    @Published var randomNumber: Int = Int()
    
    func generateRandomNumber(num: Int){
        randomNumber =  Int.random(in: num..<num+1000)
    }
}
