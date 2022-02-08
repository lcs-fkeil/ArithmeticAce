//
//  ClassExample.swift
//  Arithmetic Ace
//
//  Created by Berk Bozkurt on 2022-02-07.
//

import SwiftUI

struct ClassExampleView: View {
    // MARK: Stored Properties
    let multiplicand = Int.random(in: 1...12)
    let multiplier = Int.random(in: 1...12)
    @State var inputGiven = ""
    
    
    // MARK: Computed Property
    // What is the correct product?
    var correctProduct: Int {
        return multiplicand * multiplier
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            HStack {
                Text("✕")
                
                Spacer()
                VStack(alignment: .trailing) {
                    Text("\(multiplicand)")
                    Text("\(multiplier)")
                }
            }
           
            
            
            Divider()
            
            HStack {
                
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                Spacer()
                TextField("",
                          text: $inputGiven)
                    .multilineTextAlignment(.trailing)
            }
            Button(action: {
                // Convert the input given to an integer, if possible
                guard let productGiven = Int(inputGiven) else {
                    // Sadness, not a number
                    return
                }
                // Check the answer!
                if productGiven == correctProduct {
                    // Celebrate!
                } else {
                    // Sadness, they gave a number, but it's not correct. 
                }
                
            }, label: {
                Text("Check Answer")
                    
                    .font(.largeTitle)
            })
                .padding()
                .buttonStyle(.bordered)
            
            
            
            Spacer()
        }
        .padding(.horizontal)
        .font(.system(size: 72))
        
    }
}

struct ClassExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ClassExampleView()
    }
}
