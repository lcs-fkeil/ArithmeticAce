//
//  HomeworkClassExample.swift
//  Arithmetic Ace
//
//  Created by Franka Keil on 2022-02-07.
//

import SwiftUI

struct HomeworkClassExampleView: View {
    
    // MARK: Stored properties
    @State var multiplicand = Int.random(in: 1...12)
    @State var multiplier = Int.random(in: 1...12)
    @State var inputGiven = ""

    // Has an answer been checked?
    @State var answerChecked = false

    // Was the answer given actually correct?
    @State var answerCorrect = false

    // MARK: Computed properties
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
                    //        CONDITION      true  false
                    .opacity(answerCorrect ? 1.0 : 0.0)
                Spacer()
                TextField("",
                          text: $inputGiven)
                    .multilineTextAlignment(.trailing)
            }

            Button(action: {

                // Answer has been checked!
                answerChecked = true

                // Convert the input given to an integer, if possible
                guard let productGiven = Int(inputGiven) else {
                    // Sadness, not a number
                    answerCorrect = false
                    return
                }

                // Check the answer!
                if productGiven == correctProduct {
                    // Celebrate! 👍🏼
                    answerCorrect = true
                } else {
                    // Sadness, they gave a number, but it's not correct 😭
                    answerCorrect = false
                }
            }, label: {
                Text("Check Answer")
                    .font(.largeTitle)
                
                
            })
                .padding()
                .buttonStyle(.bordered)
            
            Button(action: {
                //I want to make the button generate new numbers and I don't know how to do that
               
                
                }, label: {
                    Text("New question")
                        .font(.largeTitle)
                })
                .padding()
                .buttonStyle(.bordered)
                //        CONDITION      true  false
                .opacity(answerCorrect ? 1.0 : 0.0)
            Spacer()
        }
        .padding(.horizontal)
        .font(.system(size: 72))
        
    }
}

struct HomeworkClassExampleView_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkClassExampleView()
    }
}
