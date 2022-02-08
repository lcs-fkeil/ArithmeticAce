//
//  AdditionView.swift
//  Arithmetic Ace
//
//  Created by Franka Keil on 2022-02-07.
//

import SwiftUI

struct AdditionView: View {
    // MARK: Stored properties
        @State var additionand = Int.random(in: 1...12)
        @State var additioner = Int.random(in: 1...12)
        @State var inputGiven = ""

        // Has an answer been checked?
        @State var answerChecked = false

        // Was the answer given actually correct?
        @State var answerCorrect = false

        // MARK: Computed properties
        // What is the correct product?
        var correctProduct: Int {
            return additionand + additioner
        }
        
        var body: some View {
                    
            VStack(spacing: 0) {
                HStack {
                    Text("+")
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("\(additionand)")
                        Text("\(additioner)")
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
                        // Sadness, they gave a number, but it's correct 😭
                        answerCorrect = false
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
struct AdditionView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionView()
    }
}
