//
//  AdditionView.swift
//  Arithmetic Ace
//
//  Created by Franka Keil on 2022-02-07.
//

import SwiftUI

struct AdditionView: View {
    // MARK: Stored properties
    @State var augend = Int.random(in: 1...12)
    @State var addend = Int.random(in: 1...12)
    
    // This String containes whatever the user types in
    @State var inputGiven = ""
    
    // Has an answer been checked?
    @State var answerChecked = false
    
    // Was the answer given actually correct?
    @State var answerCorrect = false
    
    // MARK: Computed properties
    // What is the correct product?
    var correctProduct: Int {
        return augend + addend
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            HStack {
                Text("+")
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("\(augend)")
                    Text("\(addend)")
                }
            }
            
            Divider()
            
            HStack {
                ZStack {
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(.green)
                    //      CONDITION   true  false
                        .opacity(answerCorrect ? 1.0 : 0.0)
                    Image (systemName: "x.circle")
                        .foregroundColor(.red)
                    //        CONDITION1   AND   CONDITION2    true  false
                        .opacity(answerChecked && !answerCorrect ? 1.0 : 0.0)
                    
                    // An exclamation mark has the same result as == false
                }
                Spacer()
                TextField("",
                          text: $inputGiven)
                    .multilineTextAlignment(.trailing)
                
            }
            
            ZStack {
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
                    .opacity(answerChecked ? 0.0 : 1.0)
                
                Button (action: {
                    // Generate new question
                    augend = Int.random(in: 1...12)
                    addend = Int.random(in: 1...12)
                    
                    // Reset properties that track what's happening with the current question
                    answerChecked = false
                    answerCorrect = false
                    
                    // Reset the input field
                    inputGiven = ""
                }, label: {
                    Text("New Question")
                        .font(.largeTitle)
                })
                    .padding()
                    .buttonStyle(.bordered)
                    .opacity(answerChecked ? 1.0 : 0.0)
            }
            
            
            
            Spacer()
        }
        .padding(.horizontal)
        .font(.system(size: 72))
        .navigationTitle("Addition")
    }
}

struct AdditionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AdditionView()
        }
    }
}
